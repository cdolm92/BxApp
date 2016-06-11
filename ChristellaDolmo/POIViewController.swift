//
//  POIViewController.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/23/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit

class POIViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var pointsOfInterest = [PointsOfInterest]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Points of Interest"
        tableView.delegate = self
        tableView.dataSource = self
        
        setupPlacesData()
        
        tableView.reloadData()
    }
    
    
    func setupPlacesData() {
        
        let newYorkBotanicalGarden = PointsOfInterest(name: "The New York Botanical Garden", latitude: 40.8623, longitude: -73.8774, address: "2900 Southern Blvd (at Bronx Park Rd), Bronx, NY 10458", desc: "The New York Botanical Garden is a museum of plants, an educational institution, and a scientific research organization. Founded in 1891 & now a National Historic Landmark, it is one of the greatest botanical gardens in the world")
        
        let bronxMuseumofArt = PointsOfInterest(name: "Bronx Museum of the Arts", latitude: 40.8310, longitude: -73.9197, address: "1040 Grand Concourse (at E 165th St.), Bronx, NY 10456", desc: "BxMA focuses on contemporary art by artists of African, Asian, and Latin American ancestry.")
        
        let vanCortlandt = PointsOfInterest(name: "Van Cortlandt Park", latitude: 40.8979, longitude: -73.8860, address: "Broadway (W. 242nd St.), Bronx, NY 10471", desc: "Van Cortlandt Park — more than a thousand acres atop the ridges and valleys of the northwest Bronx — is New York City's third largest park. Playing fields and playgrounds are scattered about the park's edges, surrounding a richly forested heartland fed by Tibbets Brook. The park is home to the country's first public golf course, the oldest house in the Bronx, and the borough's largest freshwater lake.")
        
        
        let bronxZoo = PointsOfInterest(name: "Bronx Zoo", latitude: 40.8506, longitude: -73.8770, address: "2300 Southern Blvd (at Boston Rd), Bronx, NY 10460", desc: "As the world’s largest urban zoo, the Bronx Zoo features more than 600 species from around the globe.")
        
        let yankeeStadium = PointsOfInterest(name: "Yankee Stadium", latitude: 40.8296, longitude: -73.9262, address: "1 E 161st St (btwn Jerome & Rivera Ave), Bronx, NY 10451", desc: "Yankee Stadium is a stadium located in The Bronx in New York City. It is the home ballpark for the New York Yankees. It opened at the beginning of the 2009 MLB season as a replacement for the team's previous home, the original Yankee Stadium, which opened in 1923 and closed in 2008.")
        
        let edgarAPoe = PointsOfInterest(name: "Edgar Allan Poe Cottage", latitude: 40.8655, longitude: -73.8942, address: "2640 Grand Concourse, Bronx, NY 10458", desc: "Edgar Allan Poe spent the last years of his life, from 1846 to 1849, in The Bronx at Poe Cottage, now located at Kingsbridge Road and the Grand Concourse. A small wooden farmhouse built about 1812, the cottage once commanded unobstructed vistas over the rolling Bronx hills to the shores of Long Island. It was a bucolic setting in which the great writer penned many of his most enduring poetical works, including 'Annabel Lee', 'The Bells' and 'The Cask of Amontillado.'")
        
        let cityIsland = PointsOfInterest(name: "City Island", latitude: 40.84758, longitude: -73.786476, address: "City Island, Bronx, NY", desc: "A small island and a neighborhood approximately 1.5 miles (2.4 km) long by 0.5 miles wide. The island is most famous for its numerous seafood restaurants.")
        
        let pelham = PointsOfInterest(name: "Pelham Bay Park", latitude: 40.8615, longitude: -73.7972, address: "Pelham Bay Park, Bronx, NY", desc: "More than three times the size of Manhattan's Central Park, Pelham Bay Park is the City's largest park property. Visitors to the park enjoy miles of bridle paths and hiking trails, Orchard Beach, the Bartow-Pell Mansion, two golf courses, and a breathtaking 13-mile saltwater shoreline that hugs Long Island Sound.")
        
         let orchard = PointsOfInterest(name: "Orchard Beach", latitude: 40.8630, longitude: -73.7926, address: "Pelham Bay Park (Orchard Beach Rd), Bronx, NY 10464", desc: "Orchard Beach, Bronx's sole public beach, was proclaimed 'The Riviera of New York' when it was created in the 1930s. The 115-acre, 1.1-mile-long beach contains a hexagonal-block promenade, a central pavilion, snack bars, food and souvenir carts, two playgrounds, two picnic areas, a large parking lot, and 26 courts for basketball, volleyball, and handball.")
        
        let marysPark = PointsOfInterest(name: "St. Mary’s Park", latitude: 40.8110, longitude: -73.9117, address: "St. Anns Ave. (St. Mary), New York, NY 10451", desc: "The largest park in the south Bronx, the lawns are particularly popular with picnickers, and families bring baskets full of food to grill on warm summer days. Runners circle the park's well-tended track, and those looking to 'get their sport on' spend time slamming handballs on the handball court, hitting and pitching in the baseball diamond, and shooting hoops on the basketball court.")
        
        pointsOfInterest += [newYorkBotanicalGarden, bronxMuseumofArt, vanCortlandt, bronxZoo, yankeeStadium, edgarAPoe, pelham, cityIsland, orchard, marysPark]
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("POICell") as? POICell {
            let place = pointsOfInterest[indexPath.row]
            
            let backgroundView = UIView()
            backgroundView.backgroundColor = UIColor.clearColor()
            cell.selectedBackgroundView = backgroundView

            cell.configureCell(place)
            
            return cell
        } else {
            return POICell()
        }
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    
        let poi: PointsOfInterest
        
        poi = pointsOfInterest[indexPath.row]
        
        performSegueWithIdentifier("POIDescVC", sender: poi)
        
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pointsOfInterest.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "POIDescVC" {
            if let detailsVC = segue.destinationViewController as? POIDescVC {
                if let poi = sender as? PointsOfInterest {
                    detailsVC.pointsOfInterest = poi
                }
            }
        }
    }
    
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    

}
