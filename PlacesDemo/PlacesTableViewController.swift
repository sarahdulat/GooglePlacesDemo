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
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView ()
        view.backgroundColor = UIColor.whiteColor()
        view.frame = CGRect(x: 0, y: 0, width: self.tableView.frame.size.width, height: 40)
        
        let header = UILabel ()
        header.text = "Restaurant"
        view.addSubview(header)
        header.frame = CGRect(x: 20, y: 0, width: self.tableView.frame.size.width, height: 40)
        header.font=UIFont.systemFontOfSize(14, weight: 0.5)
        
//        let price = UILabel ()
//        price.text = "Price"
//        view.addSubview(price)
//

        return view
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.places?.count ?? 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlaceCell") as UITableViewCell!

        if let places = places {
            let place = places[indexPath.row]
            cell.textLabel?.text = place.name
            cell.detailTextLabel?.text = "\(place.price_level) dollar signs"
        }
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("cell tapped")
    }

}
