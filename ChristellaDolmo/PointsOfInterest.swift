//
//  PointsOfInterest.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/23/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import Foundation

class PointsOfInterest {
    
    var name: String = ""
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    var address: String = ""
    var desc: String = ""
    
    convenience init(name: String, latitude: Double, longitude: Double, address: String, desc: String) {
        self.init()
        
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.address = address
        self.desc = desc
        
        
    }

}
