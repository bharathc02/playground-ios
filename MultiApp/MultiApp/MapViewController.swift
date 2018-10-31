//
//  MapViewController.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 10/21/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    class PinAnnotation:NSObject, MKAnnotation {
        var coordinate: CLLocationCoordinate2D
        var title: String?
        var subtitle: String?
        
        init(title:String, subtitle:String, coordinate:CLLocationCoordinate2D) {
            self.title = title
            self.subtitle = subtitle
            self.coordinate = coordinate
        }
    }
    
    @IBOutlet var myMapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        var locationArray:[PinAnnotation]=[]
        let reg = MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(12.983639080917529, 77.69391775131226), 200, 200)
        myMapView.setRegion(reg, animated: true)
        let pin1 = PinAnnotation(title: "Visa Office", subtitle: "Bangalore", coordinate: CLLocationCoordinate2DMake(12.983639080917529, 77.69391775131226))
        let pin2 = PinAnnotation(title: "Visa Office 2", subtitle: "Bangalore", coordinate: CLLocationCoordinate2DMake(13.983639080917529, 77.69391775131226))
        locationArray.append(pin1)
        locationArray.append(pin2)
        myMapView.addAnnotations(locationArray)
//        myMapView.addAnnotation(pin1)

        // Do any additional setup after loading the view.
    }

    // TODO try adding annotation view.
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
