//
//  EventTableViewController.swift
//  Averi
//
//  Created by Student on 10/10/2019.
//  Copyright © 2019 Dimitar Ivanov. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {
var events = SampleData.generateEventData()
}

extension EventTableViewController {
    
//    @IBAction func cancelToPlayersViewController(_ segue: UIStoryboardSegue) {
//    }
//
//    @IBAction func savePlayerDetail(_ segue: UIStoryboardSegue) {
//
//        guard let playerDetailsViewController = segue.source as? PlayerDetailsTableViewController,
//            let player = playerDetailsViewController.player else {
//                return
//        }
//
//        players.append(player)
//
//        // update the tableView
//        let indexPath = IndexPath(row: players.count - 1, section: 0)
//        tableView.insertRows(at: [indexPath], with: .automatic)
//    }

  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return events.count
  }
  
  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell",
                                             for: indexPath) as! EventTableViewCell
    
    let event = events[indexPath.row]
    cell.event = event
    return cell
  }
}



