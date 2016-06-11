//
//  BXHistoryVC.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/26/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit

class BXHistoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
     var history = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "History"
       
        tableView.delegate = self
        tableView.dataSource = self
        
        setupHistoryData()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
        
    }
    
    func setupHistoryData() {
       
        history += [
                "The Bronx was called Ranachqua by the native Swanky band of Lenape. Other Natives knew The Bronx as Keskeskeck.",
                "The Bronx was first settled in 1639 when Jonas Bronck, a Swedish sea captain from the Netherlands established a farm along the area now known as Mott Haven. The Dutch and English settlers referred to the area as 'Bronck’s Land'",
                "Most of the eastern half of the area of the Bronx was bought in 1654 by Thomas Pell of Connecticut who invited sixteen families to form village of Westchester, known as Westchester Square today.",
                "Horses, cattle, sheep and wheat were the main agricultural products and he cottage industry in cloth making thrived.",
                "In 1841, the New York and Harlem Railroad began regular commuter service between The Bronx and Manhattan.",
                "The Bronx was originally part of Westchester County. Consolidation of the Bronx into New York City proceeded in two stages. In 1895, the whole territory east of the Bronx River, were annexed to the city. City Island was voted to join the city in 1896. On January 1, 1898, the Bronx was included as one of the five Boroughs in the consolidated City of New York.",
                "In 1914, parts of New York County annexed from Westchester County were newly constituted as the Bronx. The Bronx also becomes the last county of the state of New York.",
                "In 1904, The first subway connecting the Bronx to Manhattan was built under 149th Street. This provided cheap and rapid transit. During this time and After World War I the Bronx experienced a population boom when hundreds of thousands of immigrants left tenements in Manhattan for spacious new apartments in the Bronx.",
                "In, 1914, The Kingsbridge Armory is completed. In 2013, a plan to redevelop it into the world’s largest indoor ice center was announced, called the Kingsbridge National Ice Center.",
                "In 1923 the Yankee Stadium opens.",
                "The tremendous growth that the Bronx experienced ended during the Great Depression.",
                "Between 1930 - 1960 the moderate and upper income Bronxites (predominantly non-Hispanic Whites) began to relocate converting it to a lower-income area with a African American and Hispanic population. Despite this, many privately financed buildings continued to be constructed.",
                "In 1939, The Bronx-Whitestone Bridge opens.",
                "In 1942, Parkchester,  the largest housing development of the time was completed. It housed forty thousand residents and was financed by Metropolitan Life Insurance company.",
                "In 1955, The Major Deegan Expressway opens.",
                "In 1965, The Cross-Bronx Expressway is completed. Many have blamed it for worsening the neighborhoods in the South Bronx",
                "Systematic rent control was introduced in during WWII. There has been much debate that the rampant arson the Bronx experienced during the 1970s was due to these laws as they may have made it less profitable and/or more costly for landlord to maintain buildings than to abandon or destroy those buildings.The most common explanation is that landlords would do this to take insurance money as it was more lucrative to do this than to sell the building. The arson decreased significantly after rent control policy changed and limits were imposed on insurance payments.",
                "Between 1968 and 1970, Co-op city became amongst the largest housing developments in the world, housing 60,000 residents.",
                "Since the 1980s significant development has occurred in the Bronx which is probably due to the work community members have done to rebuild the infrastructure through affordable housing.",
                "In 1997,  the Bronx is designated an “All American City” by the National Civic League, signifying it’s comeback from the decline during the 1970s.",
                "In 2009, The new Yankee Stadium opened."
            ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("BXHistoryCell") as? BXHistoryCell {
            cell.historyDetail.scrollRangeToVisible(NSMakeRange(0, 0))
            let historyDetail = history[indexPath.row]
            
            let backgroundView = UIView()
            backgroundView.backgroundColor = UIColor.clearColor()
            cell.selectedBackgroundView = backgroundView
            
            
            cell.configureCell(historyDetail)
            return cell
        } else {
            return BXHistoryCell()
        }

    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    
    

}
