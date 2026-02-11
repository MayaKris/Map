//
//   LocationManager.swift
//  Map
//
//  Created by Maya Krishnan on 2/9/26.
//

import Foundation
import CoreLocation

@Observable
class LocationManager: NSObject, CLLocationManagerDelegate{
    var locationManager = CLLocationManager()
    var geocoder = CLGeocoder()
    override init() {
            super.init()
            locationManager.delegate = self
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
        }
}
