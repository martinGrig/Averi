import UIKit
import MapKit
import EventKit


class AgendaDetailsViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var DistanceLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var BioLabel: UILabel!
    @IBOutlet weak var EntryLimitLabel: UILabel!
    @IBOutlet weak var EntryFeeLimit: UILabel!
    @IBOutlet weak var MapView: MKMapView!
    
    
    var event : Event?
    let annotation = MKPointAnnotation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        annotation.coordinate = CLLocationCoordinate2D(latitude: event!.latitude, longitude: event!.longitude)
        let coordinateRegion = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        ImageView?.image = event?.photo
        NameLabel?.text = "Name: \(event?.name ?? "")"
        DistanceLabel?.text = "Destination: \(event?.location ?? "")"
        DateLabel?.text = "Date: \(event?.date ?? "")"
        BioLabel?.text = "Bio: \(event?.bio ?? "")"
        TimeLabel?.text = "Time: \(event?.time ?? "")"
        EntryLimitLabel?.text = "Entry Limit: \(event?.entryLimit ?? 0)"
        EntryFeeLimit?.text = "Entry Fee: \(event?.entryCost ?? 0)$"
        MapView.setRegion(coordinateRegion, animated: true)
        MapView.addAnnotation(annotation)
        
        
        
    }
    
    

}

