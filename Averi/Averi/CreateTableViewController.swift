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
<<<<<<< HEAD
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
=======
    var event : Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let name = NameTextField.text,
            let location = LocationTextField.text,
            let details = DetailsTextField.text{
            event = Event.init(name: name, location: location, date: "14.06.2020", time: "14:30", entryLimit: 9, entryCost: 9.50, bio: details, photo: #imageLiteral(resourceName: "Party"))
        }
>>>>>>> fe546d443995708312d3603f24553ee62aa5b5ce
    }
    
}


extension CreateTableViewController : CLLocationManagerDelegate {
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            locationManager.requestLocation()
        }
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            print("location:: \(location)")
        }
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("error:: \(error)")
    }
}
