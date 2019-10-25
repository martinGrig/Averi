//
//  CreateTableViewController.swift
//  Averi
//
//  Created by Student on 11.10.2019 г..
//  Copyright © 2019 Dimitar Ivanov. All rights reserved.
//

import UIKit
import MapKit

class CreateTableViewController: UITableViewController {
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var LocationTextField: UITextField!
    @IBOutlet weak var DateDatePicker: UIDatePicker!
    @IBOutlet weak var EntryLimitTextField: UITextField!
    @IBOutlet weak var EntryCostTextField: UITextField!
    @IBOutlet weak var DetailsTextField: UITextField!
    var e = Event()
    var events = SampleData.generateEventData()
    
    
    @IBAction func Done(_ sender: Any) {
        e = Event(name: NameTextField.text, location: LocationTextField.text, date: "11-11-2011", entryLimit: 5, entryCost: 10, details: DetailsTextField.text, poster: 6)
        events.append(e)
        tableView.reloadData()
    }
    
    
    
}
