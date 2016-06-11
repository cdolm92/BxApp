//
//  BXPhotosVC.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/30/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit

class BXPhotosVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var collectionView:  UICollectionView!
    
    private var photos = Photo.createPhotos()

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PhotoCell", forIndexPath: indexPath) as! BXPhotoCell
        
            cell.photo = self.photos[indexPath.item]
        
        return cell
    }
    
    

    

}
