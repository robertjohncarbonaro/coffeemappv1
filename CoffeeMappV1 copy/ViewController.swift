//
//  ViewController.swift
//  CoffeeMappV1
//
//  Created by Robert Carbonaro on 21/04/2021.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet var mapView: MKMapView!
    @IBOutlet var tableView: UITableView!
    
    var locationManager: CLLocationManager?
    let distanceSpan:Double = 500 // visible CoffeeMapp span
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //force user map to light mode
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
            
            // Initiate location manager
            
            locationManager?.delegate = self
            
            
            if locationManager == nil {
                locationManager = CLLocationManager()
                
                locationManager!.delegate = self
                locationManager!.desiredAccuracy = kCLLocationAccuracyBest
                locationManager!.requestAlwaysAuthorization()
                locationManager!.requestWhenInUseAuthorization()
                locationManager!.distanceFilter = 0
                locationManager!.startUpdatingLocation()
                mapView.showsUserLocation = true
            }
        }
        
        
    }
    
    // CUSTOM ANNOTATION VIEW
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is CoffeeMappObject else {return nil}
        
        let identifier = "CoffeeMappObject"
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
            
            let btn = UIButton(type: .detailDisclosure)
            annotationView?.rightCalloutAccessoryView = btn
        } else {
            annotationView?.annotation = annotation
        }
        
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        guard let coffeemappobject = view.annotation as? CoffeeMappObject else {return}
        
        let placeName = coffeemappobject.title
        let placeInfo = coffeemappobject.info
        
        let ac = UIAlertController(title: placeName, message: placeInfo, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.first!
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distanceSpan, longitudinalMeters: distanceSpan)
        print(location.coordinate.latitude)
        print(location.coordinate.longitude)
        mapView.setRegion(coordinateRegion, animated: true)
        locationManager?.stopUpdatingLocation()
        //locationManager?.pausesLocationUpdatesAutomatically = true
    }

}

