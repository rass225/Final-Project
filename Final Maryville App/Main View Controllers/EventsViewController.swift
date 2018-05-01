//
//  EventsViewController.swift
//  Final Maryville App
//
//  Created by Rasmus Tauts on 23/04/2018.
//  Copyright © 2018 Rasmus Tauts. All rights reserved.
//

import UIKit

class EventsViewController: UITableViewController {
    
    struct happenings {
        var name = String()
        var date = String()
    }
    var events = [happenings(name:"Spirit Of Maryville Dinner", date: "05/02/2018"),
                  happenings(name: "'All You Need Is Love' Kids Rock Cancer Benefit Concert", date: "05/03/2018"),
                  happenings(name: "Maryville Talks Books With Judy Blume", date: "05/04/2018"),
                  happenings(name: "Earl E. Walker Memorial Golf Outing", date: "05/05/2018"),
                  happenings(name: "Maryville Golf Classic", date: "05/06/2018")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "events")! as UITableViewCell
        cell.textLabel?.numberOfLines = 0;
        tableView.rowHeight = UITableViewAutomaticDimension
        cell.textLabel?.text = events[indexPath.row].name
        cell.detailTextLabel?.text = events[indexPath.row].date
        return cell
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
