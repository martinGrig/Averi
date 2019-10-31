//
//  CreateTableViewController.swift
//  Averi
//
//  Created by Student on 11.10.2019 г..
//  Copyright © 2019 Dimitar Ivanov. All rights reserved.
//

import UIKit


class CreateTableViewController: UITableViewController {
    @IBOutlet weak var NameTextField: UITextField!
    
    @IBOutlet weak var LocationLabel: UILabel!
    @IBOutlet weak var DateDatePicker: UIDatePicker!
    @IBOutlet weak var EntryLimitTextField: UITextField!
    @IBOutlet weak var EntryCostTextField: UITextField!
    @IBOutlet weak var DetailsTextField: UITextField!
    
    var event : Event?
    
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }

    private var birthDate = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.requestLocation()
        
    
    }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let formatter = DateFormatter()
           formatter.dateFormat = "dd.MM.yyyy"
            let formatterr = DateFormatter()
            formatterr.dateFormat = "hh:mm a"
            let datee = formatter.string(from: DateDatePicker.date)
            let timee = formatterr.string(from: DateDatePicker.date)
            let textfieldInt: Int? = Int(EntryLimitTextField.text!)
            let textfieldFloat: Float? = Float(EntryLimitTextField.text!)
            if segue.identifier == "SavePlayerDetail",
                let name = NameTextField.text,
                let location = LocationLabel.text,
                let details = DetailsTextField.text {
                event = Event.init(name: name, location: location, date: datee, time: timee, entryLimit: textfieldInt!, entryCost: textfieldFloat!, bio: details, photo: #imageLiteral(resourceName: "Party"))
            }
//        if let name = NameTextField.text,
//            let location = LocationTextField.text,
//            let details = DetailsTextField.text{
//            event = Event.init(name: name, location: location, date: "14.06.2020", time: "14:30", entryLimit: 9, entryCost: 9.50, bio: details, photo: #imageLiteral(resourceName: "Party"))
//        }
    }

}
extension CreateTableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            NameTextField.becomeFirstResponder()
        }
}
}
