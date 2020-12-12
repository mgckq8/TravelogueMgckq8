//
//  EntriesViewController.swift
//  TravelogueMgckq8
//
//  Created by Melissa Crozier on 12/10/20.
//

import UIKit
import CoreData

class EntriesViewController: UITableViewController {

    @IBOutlet var entriesTableView: UITableView!
    
    var entries : [Entry]
    var trip: Trip
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = entriesTableView.dequeueReusableCell(withIdentifier: "entriesCell", for: indexPath)
        if let entry = trip.entries[indexPath.row]{
            cell.textLabel.text = entry.entryTitle
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteEntry(at: indexPath)
        }
    }
}
