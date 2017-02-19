//
//  ViewController.swift
//  GoogleMapsDemo
//
//  Created by Nilesh Kumar on 31/12/16.
//  Copyright © 2016 Nilesh Kumar. All rights reserved.
//

import UIKit
//import GoogleMaps
//import GooglePlaces
//import CoreLocation

//class ViewController: UIViewController,CLLocationManagerDelegate {
class ViewController: UIViewController {

//    var locationManager = CLLocationManager()
//    var mapView: GMSMapView!
//    var placesClient: GMSPlacesClient!
    
    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("git hub saving doing once more")
    }
    
    //MARK: View Did Appear
    override func viewDidAppear(_ animated: Bool) {
//        locationManager = CLLocationManager()
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.distanceFilter = 50
//        
//        switch CLLocationManager.authorizationStatus() {
//        case .authorizedWhenInUse:
//            locationManager.startUpdatingLocation()
//            break
//        case .notDetermined:
//            locationManager.requestWhenInUseAuthorization()
//            locationManager.startUpdatingLocation()
//            break
//        case .restricted, .denied:
//            let alertController = UIAlertController(
//                title: "Location services is off",
//                message: "Turn on location services to access your current location.",
//                preferredStyle: .alert)
//            
//            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//            alertController.addAction(cancelAction)
//            
//            let okAction = UIAlertAction(title: "Settings", style: .default, handler: { (action: UIAlertAction!) in
//                    if let url = URL(string:UIApplicationOpenSettingsURLString) {
//                        UIApplication.shared.openURL(url as URL)
//                    }
//            })
//            alertController.addAction(okAction)
//            
//            DispatchQueue.main.async(execute: {
//                self.present(alertController, animated: true, completion: nil)
//            })
//            break
//        default:
//            break
//        }
    }
    
//    //MARK: CLLocation Delegate
//    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let location = locations.first {
//            let myLatitude = location.coordinate.latitude
//            let myLongitude = location.coordinate.longitude
//            let myCoordinate2D = CLLocationCoordinate2D.init(latitude: myLatitude, longitude: myLongitude)
//            locationManager.stopUpdatingLocation()
//            LoadGoogleMapForUserLocation(userLocation2D: myCoordinate2D)
//        }
//    }
    
//    func LoadGoogleMapForUserLocation(userLocation2D: CLLocationCoordinate2D) {
//         print("my current locations myCoordinate2D->\(userLocation2D)")
//        let camera = GMSCameraPosition.camera(withLatitude: userLocation2D.latitude, longitude: userLocation2D.longitude, zoom: 15.0)
//        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
//        view = mapView
//        
//        // Creates a marker in the center of the map.
//        let marker = GMSMarker()
//        marker.position = CLLocationCoordinate2D(latitude: userLocation2D.latitude, longitude: userLocation2D.longitude)
//        marker.map = mapView
//    }
    
    //MARK: Did Receive Memory Warning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

