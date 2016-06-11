//
//  Photo.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/30/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit

class Photo {
    var desc = ""
    var image: UIImage!
    
    init(desc: String, image: UIImage!) {
        self.desc = desc
        self.image = image
    }
    
    static func createPhotos() -> [Photo] {
        return [
            Photo(desc: "Tire Shop in The Bronx", image: UIImage(named: "bronxview2")!),
            Photo(desc: "View of the Bronx River", image: UIImage(named: "bronxriver")!),
            Photo(desc: "Whitlock", image: UIImage(named: "bronxview")!),
            Photo(desc: "Bronx Graffiti", image: UIImage(named: "graffiti")!),
            Photo(desc: "Hunts Points Avenue Train Station", image: UIImage(named: "hptrainstation")!),
            Photo(desc: "Hunts Points Avenue", image: UIImage(named: "huntspoint")!),
            Photo(desc: "Hunts Point Avenue", image: UIImage(named: "huntspoint2")!),
            Photo(desc: "Old Train Station in The Bronx", image: UIImage(named: "oldtrainstation")!),
            Photo(desc: "The Metropolitan Oval in Parkchester", image: UIImage(named: "parkchester")!),
            Photo(desc: "The Metropolitan Oval in Parkchester", image: UIImage(named: "parkchester2")!),
            Photo(desc: "Hugh Grant Circle and Q44 Bus Station", image: UIImage(named: "q44")!),
            Photo(desc: "Q44", image: UIImage(named: "q442")!),
            Photo(desc: "St. Lawrence", image: UIImage(named: "stlaw")!),
            Photo(desc: "The Six Train", image: UIImage(named: "traincoming")!),
            Photo(desc: "Train turnstile", image: UIImage(named: "trainstation")!),
            Photo(desc: "Six Train Station at Parkchester", image: UIImage(named: "undertrain")!),
            Photo(desc: "Whitlock", image: UIImage(named: "whitlock")!)
        ]
        
    
    }

}
