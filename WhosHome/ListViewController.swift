//
//  ListViewController.swift
//  WhosHome
//
//  Created by Vik Denic on 1/4/15.
//  Copyright (c) 2015 davik. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, ESTBeaconManagerDelegate {

    let beaconManager = ESTBeaconManager()
    let beacon = ESTBeacon()

    override func viewDidLoad() {
        super.viewDidLoad()
        beaconManager.delegate = self
        let proxID = NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")
        beaconManager.startEstimoteBeaconsDiscoveryForRegion(ESTBeaconRegion(proximityUUID: proxID, identifier: "Vik's Beacons"))
    }

    func beaconManager(manager: ESTBeaconManager!, didDiscoverBeacons beacons: [AnyObject]!, inRegion region: ESTBeaconRegion!) {
        for beacon in beacons
        {
            println(beacon)
        }
    }
}
