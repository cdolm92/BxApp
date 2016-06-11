//
//  BXPhotoCell.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/30/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit

class BXPhotoCell: UICollectionViewCell {
    
    var photo: Photo! {
        didSet {
            updateUI()
        }
    }
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    
    private func updateUI() {
        layer.cornerRadius = 5.0
        titleLbl.text = photo.desc
        photoImageView.image = photo.image
        
    }
    
}
