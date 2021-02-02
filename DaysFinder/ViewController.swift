//
//  ViewController.swift
//  DaysFinder
//
//  Created by Rihards Lozins on 01/02/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var findButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        findButton.layer.cornerRadius = 12
    }
    
    @IBAction func findWeekDayTapped(_ sender: Any) {
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        
        dateComponents.day = Int(dayTextField.text!)
        dateComponents.month = Int(monthTextField.text!)
        dateComponents.year = Int(yearTextField.text!)
        
        let date = calendar.date(from: dateComponents)
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let weekday = dateFormatter.string(from: date!)
        
        
        if dateComponents.day != nil && dateComponents.month != nil && dateComponents.year != nil  {
            resultLabel.text = "It is \(weekday)"
        }
    }
}
