//
//  AppDelegate.swift
//  GoogleMapsDemo
//
//  Created by Nilesh Kumar on 31/12/16.
//  Copyright © 2016 Nilesh Kumar. All rights reserved.
//

import UIKit
//import GoogleMaps
//import GooglePlaces
import CoreLocation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, CLLocationManagerDelegate {

    var window: UIWindow?

    var locationManager = CLLocationManager()
   // var mapView: GMSMapView!
    //var placesClient: GMSPlacesClient!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        GMSServices.provideAPIKey("AIzaSyBU73G8JOuJ9S2E0t4S418AxdCbDn4vHus")
//        GMSPlacesClient.provideAPIKey("AIzaSyBU73G8JOuJ9S2E0t4S418AxdCbDn4vHus")
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 50
        
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
             print("authorizedWhenInUse")
            locationManager.startUpdatingLocation()
            break
        case .notDetermined:
             print("notDetermined")
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
            break
        case .restricted, .denied:
            print("restricted, denied")
            break
        default:
            break
        }
        
        return true
    }
    
    //MARK: CLLocation Delegate
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            let myLatitude = location.coordinate.latitude
            let myLongitude = location.coordinate.longitude
            let myCoordinate2D = CLLocationCoordinate2D.init(latitude: myLatitude, longitude: myLongitude)
            print("my current locations myCoordinate2D->\(myCoordinate2D)")
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

