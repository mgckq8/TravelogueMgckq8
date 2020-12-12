//
//  TripsViewController.swift
//  TravelogueMgckq8
//
//  Created by Melissa Crozier on 12/10/20.
//

import UIKit

class TripsViewController: UITableViewController {
    var trip: [Trip] ?
    
    @IBOutlet var tripsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count ?? 0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tripTableView.dequeueReusableCell(withIdentifier: "tripsCell", for: indexPath)
        let trip = trips[indexPath.row]
        cell.textLabel.text = trip.tripTitle
        return cell
    }


}
