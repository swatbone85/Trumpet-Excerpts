//
//  PDFViewer.swift
//  Trumpet Excerpts
//
//  Created by Thomas Swatland on 22/08/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit
import WebKit

class PDFViewer: UIViewController {
    
    var pdfTitle = String()
    let pdfViewer = WKWebView()
    let container = ActivityIndicator.container
    let activityIndicator = ActivityIndicator.activityIndicator

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupWebView()
        loadPDF()
    }

    @IBAction func shareButtonPressed(_ sender: UIBarButtonItem) {
        
        let activityVC = UIActivityViewController(activityItems: [(pdfViewer.url)! as URL], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
    
    func setupWebView() {
        view.addSubview(pdfViewer)
        pdfViewer.navigationDelegate = self
        
        pdfViewer.translatesAutoresizingMaskIntoConstraints = false
        pdfViewer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pdfViewer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        pdfViewer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        pdfViewer.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func loadPDF() {
        
        showActivityIndicator()
        let path = URL(fileURLWithPath: Bundle.main.path(forResource: pdfTitle, ofType: ".pdf")!)
        let request = URLRequest(url: path)
        
        pdfViewer.load(request)
    }
    
    func showActivityIndicator() {
        
        container.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2 - 50)
        container.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        container.layer.cornerRadius = 10
        view.clipsToBounds = true
        
        activityIndicator.center = CGPoint(x: container.frame.size.width / 2, y: container.frame.size.height / 2)
        
        ActivityIndicator.start()
        
        container.addSubview(activityIndicator)
        pdfViewer.addSubview(container)
    }
    
    func hideActivityIndicator() {
        ActivityIndicator.stop()
        container.removeFromSuperview()
    }
}

extension PDFViewer: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        hideActivityIndicator()
    }
}
