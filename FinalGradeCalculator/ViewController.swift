//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by GUSTAVO TORRES on 11/12/18.
//  Copyright © 2018 GUSTAVO TORRES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentGradeTextbox: UITextField!
    
    @IBOutlet weak var desiredGradeTextbox: UITextField!
    
    @IBOutlet weak var examWorthTextbox: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBAction func calculateGradeOnTapped(_ sender: Any) {
    let currentGrade =
        Int(currentGradeTextbox.text!)
    let desiredGrade =
        Int(desiredGradeTextbox.text!)
    let examWorth =
        Int(examWorthTextbox.text!)
    let result = (100 * desiredGrade! - (100 - examWorth!) * currentGrade!) / examWorth!
    print(result)
    if result <= Int(100) {
        view.backgroundColor = .green
    }else{
        view.backgroundColor = .red
        }
        }
}


