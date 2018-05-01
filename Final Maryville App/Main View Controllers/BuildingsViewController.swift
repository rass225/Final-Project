//
//  BuildingsViewController.swift
//  Final Maryville App
//
//  Created by Rasmus Tauts on 23/04/2018.
//  Copyright © 2018 Rasmus Tauts. All rights reserved.
//

import UIKit

class BuildingsViewController: UITableViewController {
    var buildings = ["DUC", "Simon Atheltic Center", "Mouton Hall", "Saints Hall", "Gander Hall", "Walker Hall", "Potter Hall", "Maryville University Library", "Auditroium", "Chapel", "Buder Family Student Commons", "McNally House", "Baseball Field", "Soccer Field", "Tennis Field", "Soccer Practice Field", "Anheuser-Busch Hall", "Reid Hall", "Kernaghan Hall", "Design & Visual Art Building", "Design & Visual Art/3D Studio", "Annex", "Apartments"]
    var SegueIdentifier = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    override func viewDidLoad() {
        super.viewDidLoad()

      //A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return buildings.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "buildings")! as UITableViewCell
        cell.textLabel?.text = buildings[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: SegueIdentifier[indexPath.row], sender: self)
    }

    
}
