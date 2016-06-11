//
//  MenuVC.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/26/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func historyBtnTapped(sender: AnyObject) {
        
        performSegueWithIdentifier("BXHistoryVC", sender: sender)
    }

   
    @IBAction func poiBtnTapped(sender: AnyObject) {
        
        performSegueWithIdentifier("POIViewController", sender: sender)
    }
    
    @IBAction func photosBtnPressed(sender: AnyObject) {
        
        performSegueWithIdentifier("BXPhotosVC", sender: sender)
    }

}
