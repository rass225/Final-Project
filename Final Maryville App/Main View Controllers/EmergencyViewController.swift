//
//  EmergencyViewController.swift
//  Final Maryville App
//
//  Created by Rasmus Tauts on 23/04/2018.
//  Copyright © 2018 Rasmus Tauts. All rights reserved.
//

import UIKit

class EmergencyViewController: UIViewController {

// Emergency phone call to Public Safety
    @IBAction func PublicSafety(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://314-529-9500")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
