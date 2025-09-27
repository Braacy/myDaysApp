//
//  ViewController.swift
//  myDaysApp
//
//  Created by Владислав Близнюк on 27.09.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    private var numberOfDays = ""
    
    override func viewDidLoad() {
   
        super.viewDidLoad()
   
    }
    
    @IBAction func resultBtnPressed() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
    
    @IBAction func dataPicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
}
