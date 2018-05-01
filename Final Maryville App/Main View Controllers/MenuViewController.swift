//
//  MenuViewController.swift
//  Final Maryville App
//
//  Created by Rasmus Tauts on 23/04/2018.
//  Copyright © 2018 Rasmus Tauts. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    var tableArray = ["Events", "Appointments", "Buildings", "Emergency", "About Me"]
    var segueIndentifier = ["A", "B", "C", "D", "E"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.text = tableArray[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIndentifier[indexPath.row], sender: self)
    }

}
