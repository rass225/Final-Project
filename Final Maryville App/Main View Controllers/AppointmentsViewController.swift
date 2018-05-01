//
//  AppointmentsViewController.swift
//  Final Maryville App
//
//  Created by Rasmus Tauts on 23/04/2018.
//  Copyright © 2018 Rasmus Tauts. All rights reserved.
//

import UIKit

class AppointmentsViewController: UITableViewController {
 
    struct Meetings {
        var name = String()
        var date = String()
        
    }
    
    var appointments = [Meetings(name: "Board Meeting", date: "05/01/2018"),
                        Meetings(name: "Campus Tour", date: "05/02/2018"),
                        Meetings(name: "Athletic Department Seminar", date: "05/03/2018")]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appointments.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "appointments")! as UITableViewCell
        cell.textLabel?.numberOfLines = 0;
        tableView.rowHeight = UITableViewAutomaticDimension
        cell.textLabel?.text = appointments[indexPath.row].name
        cell.detailTextLabel?.text = appointments[indexPath.row].date
        
        return cell
    }

}
