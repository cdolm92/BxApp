//
//  POIDescVC.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/23/16.
//  Copyright © 2016 Christella. All rights reserved.
//


import UIKit
import MapKit


class POIDescVC: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!

    @IBOutlet weak var textDescription: UITextView!
    
    var pointsOfInterest: PointsOfInterest!
    let distance: CLLocationDistance = 900
    var camera: MKMapCamera?
    let pitch: CGFloat = 65
    
    override func viewDidLoad() {
        super.viewDidLoad()
        map.delegate = self
        
        self.navigationItem.title = pointsOfInterest.name
        
        textDescription.text = pointsOfInterest.desc
        
        
        map.mapType = .HybridFlyover
        map.showsCompass = false
        
        camera =  MKMapCamera(lookingAtCenterCoordinate:CLLocationCoordinate2D(latitude: pointsOfInterest.latitude, longitude: pointsOfInterest.longitude)
            , fromDistance: distance, pitch: 0, heading: 0)
        
        map.camera = camera!
        
        
        let place = Place(title: pointsOfInterest.name, locationName: pointsOfInterest.address, coordinate: CLLocationCoordinate2D(latitude: pointsOfInterest.latitude, longitude: pointsOfInterest.longitude))
        
        
        
        
        map.addAnnotation(place)
        
     }
    
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "Place"
        
        if annotation.isKindOfClass(Place.self) {
            if let annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier) {
                annotationView.annotation = annotation
                return annotationView
            } else {
                let annotationView = MKPinAnnotationView(annotation:annotation, reuseIdentifier:identifier)
                annotationView.enabled = true
                annotationView.canShowCallout = true
                
                let image = UIImage(named:"transport.png")
                let btn = UIButton(type: .Custom)
                btn.frame = CGRectMake(0, 0, 30, 30)
                btn.setImage(image, forState: .Normal)
                annotationView.rightCalloutAccessoryView = btn
                return annotationView
            }
        }
        
        return nil
    }
    
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
//        let capital = view.annotation as! Place
//        let placeName = capital.title
//        
//        let ac = UIAlertController(title: placeName, message: placeName, preferredStyle: .Alert)
//        ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
//        presentViewController(ac, animated: true, completion: nil)
        
        openMapForPlace()
    }
    
    
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(30.0, delay: 0, options: [.AllowUserInteraction], animations: {
            if let camera = self.camera {
                camera.heading += 180
                camera.pitch = self.pitch
                self.map.camera = camera
            }
            
        }, completion: nil)
        
        textDescription.scrollRangeToVisible(NSMakeRange(0, 0))

    }
    
    
    func openMapForPlace() {
    
        let lat1 : NSString = "\(pointsOfInterest.latitude)"
        let lng1 : NSString = "\(pointsOfInterest.longitude)"
        
        let latitute:CLLocationDegrees =  lat1.doubleValue
        let longitute:CLLocationDegrees =  lng1.doubleValue
        
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitute, longitute)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(MKCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(MKCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = pointsOfInterest.name
        mapItem.openInMapsWithLaunchOptions(options)
    }
    
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func getDirectionsBtnPressed(sender: AnyObject) {
        openMapForPlace()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
