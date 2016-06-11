//
//  Place.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/26/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import Foundation

import MapKit

class Place: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String,coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}