//
//  ViewController.swift
//  PlacesDemo
//
//  Created by julie.yaunches on 3/22/16.
//  Copyright © 2016 julie.yaunches. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class HomeViewController: UIViewController {

    @IBAction func buttonPressed(sender: AnyObject) {
        let params: [String:AnyObject] = ["key": "AIzaSyBdt7KHl07gIOeT-zshtJvh_p2nI5pDS_Y",
                                          "radius": "500",
                                          "location": "-33.8670522,151.1957362",
                                          "types": "food"]

        Alamofire.request(.GET, "https://maps.googleapis.com/maps/api/place/nearbysearch/json", parameters: params)
        .responseJSON {
            response in
            if let data = response.data {
                let json = JSON(data: data)
                let places = PlaceJSONParser.createFrom(json)

                self.viewPlaces(places)
                print("\(json)")
            }
        }
    }


    func viewPlaces(places: [Place]) {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))
        if let placesTVC = storyboard.instantiateViewControllerWithIdentifier("PlacesTableViewController") as? PlacesTableViewController {
            placesTVC.places = places
            self.navigationController?.pushViewController(placesTVC, animated: true)
        }
    }
}

