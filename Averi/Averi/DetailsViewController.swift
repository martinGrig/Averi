//
//  DetailsViewController.swift
//  Averi
//
//  Created by Student on 24.10.2019 г..
//  Copyright © 2019 Dimitar Ivanov. All rights reserved.
//

import UIKit
import MapKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var DistanceLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var BioLabel: UILabel!
    @IBOutlet weak var MapView: MKMapView!
    @IBOutlet weak var JoinButton: UIButton!
    @IBOutlet weak var EntryLimitLabel: UILabel!
    @IBOutlet weak var EntryFeeLimit: UILabel!
    
    var event : Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ImageView?.image = event?.photo
        NameLabel?.text = "Name: \(event?.name ?? "")"
        DistanceLabel?.text = "Destination: \(event?.location ?? "")"
        DateLabel?.text = "Date: \(event?.date ?? "")"
        BioLabel?.text = "Bio: \(event?.bio ?? "")"
        TimeLabel?.text = "Time: \(event?.time ?? "")"
        EntryLimitLabel?.text = "Entry Limit: \(event?.entryLimit ?? 0)"
        EntryFeeLimit?.text = "Entry Fee: \(event?.entryCost ?? 0)$"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
