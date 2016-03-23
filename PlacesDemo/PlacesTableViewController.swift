//
//  PlacesTableViewController.swift
//  PlacesDemo
//
//  Created by julie.yaunches on 3/22/16.
//  Copyright © 2016 julie.yaunches. All rights reserved.
//

import Foundation
import UIKit

class PlacesTableViewController: UITableViewController {
    var places: [Place]?

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.places?.count ?? 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlaceCell") as UITableViewCell!

        if let places = places {
            let place = places[indexPath.row]
            cell.textLabel?.text = place.name
            cell.detailTextLabel?.text = "rating: \(place.rating)"
        }
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("cell tapped")
    }

}
