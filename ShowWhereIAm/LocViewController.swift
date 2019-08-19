//
//  LocViewController.swift
//

import UIKit
import MapKit
import CoreLocation

class LocViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var maps: MKMapView!
    
    let manager = CLLocationManager()
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        let myLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: myLocation, span: span)
        maps.setRegion(region, animated: true)
        
        self.maps.showsUserLocation = true
    }
    

    @IBAction func locBtn(_ sender: UIButton) {
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
}
