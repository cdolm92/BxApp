//
//  POICell.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/23/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit

class POICell: UITableViewCell {

    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var placeAddress: UILabel!
    @IBOutlet weak var placeDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell (poi: PointsOfInterest) {
        placeName.text = poi.name
        placeAddress.text = poi.address
        placeDesc.text = poi.desc
    }

}
