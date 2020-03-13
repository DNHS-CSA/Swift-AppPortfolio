//
//  PythControl.swift
//  SwiftPortfolio
//
//  Created by Marwah, Tanmay on 3/11/20.
//  Copyright © 2020 Marwah, Tanmay. All rights reserved.
//

import Foundation
import UIKit
class PythagController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var side1: UITextField!
    @IBOutlet weak var side2: UITextField!
    @IBOutlet weak var side3: UILabel!
    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        side1.text = ""
        side2.text = ""
        side3.text = "Side 3: "
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
    
        //s1 and s2 handeled through single 'side' tuple
        let side = (Float(side1.text!), Float(side2.text!))
        
        // Pythagorean Calculation
    let s3 = sqrt( (side.0! * side.0!) + (side.1! * side.1!) )

        // Set calculation to screen
        side3.text =  String(s3)
        print("Pyth  \(side3.text!)")
    
    }
}
