//  PlaceJSONParser.swift
//  PlacesDemo
//
//  Created by julie.yaunches on 3/22/16.
//  Copyright © 2016 julie.yaunches. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Place {
    var name: String
    var price_level: Int
}

class PlaceJSONParser: NSObject {
    static func createFrom(incomingJSON: SwiftyJSON.JSON) -> [Place] {
        var resultPlaces: [Place] = []
        
        let jsonPlaces = incomingJSON["results"].array
        
        for subJSON in jsonPlaces! {
            if let name = subJSON["name"].rawString() {
                
                let price_level = subJSON["price_level"].intValue
                let place = Place(name: name, price_level: price_level)
                
                resultPlaces.append(place)
            }
            
        }
        return resultPlaces
    }
}