//
//  Constant.swift
//  ServiceCallDemo
//
//  Created by Mehul.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import UIKit


public let BASE_URL     = "http://52.25.140.200:5018/api/"         //Staging URL

struct K {

    struct Key {
        
        static let data                         = "data"
        static let loggedInUser                 = "kLoggedInUserKey"
        static let deviceToken                  = "kDeviceToken"
        
        static let jobCreation                 = "kJobCreation"
        
        static let kStateCity = "kStateCity"
        
    }
    
    struct URL {
        static let MY_DRIVER_COMPANY_LIST       = BASE_URL + "driver/my-driver-company-list"
        static let GET_REQUESTED_JOBLIST        = BASE_URL + "driver/get-requested-job-list"
    }
}
