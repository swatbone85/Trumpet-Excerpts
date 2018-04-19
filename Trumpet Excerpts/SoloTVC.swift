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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return excerpts[section].pieces.count
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return excerpts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = excerpts[indexPath.section].pieces[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(excerpts[section].composer.uppercased()), \(excerpts[section].firstName)"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenComposer = excerpts[indexPath.section].composer
        chosenPiece = excerpts[indexPath.section].pieces[indexPath.row]
        
        performSegue(withIdentifier: "soloSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as? PDFViewer
        
        destVC?.title = "\(chosenPiece) (\(chosenComposer))"
        destVC?.pdfTitle = "\(chosenPiece) (\(chosenComposer))"
    }
}

