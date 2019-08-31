//
//  AppUtility.swift
//  ServiceCallDemo
//
//  Created by Mehul.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import CoreLocation

class AppUtility: NSObject, CLLocationManagerDelegate {

    
    public static let `default` = AppUtility()
    
    var locationManager : CLLocationManager = CLLocationManager()
    var getLocationCompletion : ((CLLocation?) -> Void)?
    var isUpdatingLocation : Bool = false
    
    @objc func getUserCurrentLocation(completion: @escaping ((CLLocation?) -> Void)) {
        self.isUpdatingLocation = true
        self.locationManager.startUpdatingLocation()
        self.getLocationCompletion = completion
    }
}

struct App {

    
    enum UserRole: Int {
        case User       = 3
        case Driver     = 4
        case Company    = 5
    }
    
}

enum MediaType : Int {
    case text   = 0
    case image  = 1
    case video  = 2
    case audio  = 3
}
