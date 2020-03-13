//
//  SquareControl.swift
//  SwiftPortfolio
//
//  Created by Marwah, Tanmay on 3/12/20.
//  Copyright © 2020 Marwah, Tanmay. All rights reserved.
//
import Foundation
import UIKit
class SquareController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var side1: UITextField!
    @IBOutlet weak var side2: UITextField!
    @IBOutlet weak var area: UILabel!
    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        side1.text = ""
        side2.text = ""
        area.text = "The area is:"
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
        // let is for values that are not modified
        let s1 = Float(side1.text!) // Input value, !(Bang) avoids errors
        let s2 = Float(side2.text!)

        // Pythagorean Calculation
        let s3 =  (s1! * s2!)

        // Set calculation to screen
        area.text =  String(s3)
        print("Area  \(area.text!)")
    
    }
}
