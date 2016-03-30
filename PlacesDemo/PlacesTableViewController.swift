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
        view.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.3)
        view.frame = CGRect(x: 0, y: 0, width: self.tableView.frame.size.width, height: 60)
        
        
        
        let header = UILabel ()
        header.text = "Restaurant"
        view.addSubview(header)
        header.frame = CGRect(x: 20, y: 10, width: self.tableView.frame.size.width, height: 40)
        header.font=UIFont.systemFontOfSize(14, weight: 0.5)
        header.textAlignment = NSTextAlignment.Left
        header.font = UIFont (name: "Helvetica", size: 30)
        
        let detail = UILabel ()
        detail.text = "Price"
        view.addSubview(detail)
        detail.frame = CGRect(x: -40, y: 10, width: self.tableView.frame.size.width, height: 40)
        detail.font=UIFont.systemFontOfSize(14, weight: 0.5)
        detail.textAlignment = NSTextAlignment.Right
        detail.font = UIFont (name: "Helvetica", size: 30)



        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
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
