//
//  Distance.swift
//  SwiftPortfolio
//
//  Created by Marwah, Tanmay on 3/12/20.
//  Copyright © 2020 Marwah, Tanmay. All rights reserved.
//

import Foundation
import UIKit
class DistanceController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var rate: UITextField!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var distance: UILabel!
    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        rate.text = ""
        time.text = ""
        distance.text = "You traveled: "
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
        // let is for values that are not modified
        let r = Float(rate.text!) // Input value, !(Bang) avoids errors
        let t = Float(time.text!)

        // Pythagorean Calculation
        let d =  (r! * t!)
    
        //append units to end of numeric value
        let u = " miles"
    
        // Set calculation to screen
        distance.text =  String(d) + String(u)
        print("Distance  \(distance.text!)")
    
    }
}
