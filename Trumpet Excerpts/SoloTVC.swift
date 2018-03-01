//
//  ViewController.swift
//  Trumpet Excerpts
//
//  Created by Thomas Swatland on 22/08/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit

class SoloTVC: UITableViewController {
    
    var chosenComposer = String()
    var chosenPiece = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return soloExcerpts[section].pieces.count
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return soloExcerpts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text = soloExcerpts[indexPath.section].pieces[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(soloExcerpts[section].composer.uppercased()), \(soloExcerpts[section].firstName)"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenComposer = soloExcerpts[indexPath.section].composer
        chosenPiece = soloExcerpts[indexPath.section].pieces[indexPath.row]
        
        performSegue(withIdentifier: "soloSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as? PDFViewer
        
        destVC?.title = "\(chosenPiece) (\(chosenComposer))"
        destVC?.pdfTitle = "\(chosenPiece) (\(chosenComposer)) solo"
    }
}

