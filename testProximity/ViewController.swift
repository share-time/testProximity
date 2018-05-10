//
//  ViewController.swift
//  testProximity
//
//  Created by Godwin Pang on 5/9/18.
//  Copyright © 2018 share-time. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let device = UIDevice.current
        device.isProximityMonitoringEnabled = true
        if device.isProximityMonitoringEnabled {
            NotificationCenter.default.addObserver(self, selector: Selector(("proximityChanged:")), name: NSNotification.Name(rawValue: "UIDeviceProximityStateDidChangeNotification"), object: device)
        }
    }
    
    func proximityChanged(notification: Notification){
        if let device = notification.object as? UIDevice {
            print("\(device) detected!")
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

