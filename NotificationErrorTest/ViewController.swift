//
//  ViewController.swift
//  NotificationErrorTest
//
//  Created by Nisala on 7/27/24.
//

import UIKit
import FirebaseMessaging

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func click(_ sender: Any) {
        print("Registering...")
        Messaging.messaging().subscribe(toTopic: "faketopic") { error in
            if let error = error {
                print("ERROR! \(error)")
                return
            }
            
            print("Success")
        }
    }
}

