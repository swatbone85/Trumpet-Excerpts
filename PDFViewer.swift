//
//  PDFViewer.swift
//  Trumpet Excerpts
//
//  Created by Thomas Swatland on 22/08/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit

class PDFViewer: UIViewController {
    
    var pdfTitle = String()
    
    @IBOutlet weak var pdfViewer: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = URL(fileURLWithPath: Bundle.main.path(forResource: pdfTitle, ofType: ".pdf")!)
        let request = URLRequest(url: path)
        
        pdfViewer.loadRequest(request)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
