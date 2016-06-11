//
//  BXHistoryCell.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/26/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit

class BXHistoryCell: UITableViewCell {

    @IBOutlet weak var historyDetail: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    func configureCell (bxHistory: String) {
        historyDetail.text = bxHistory
        
    }

    

}
