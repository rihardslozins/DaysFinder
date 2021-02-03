//
//  AppInfoViewController.swift
//  DaysFinder
//
//  Created by Rihards Lozins on 03/02/2021.
//

import UIKit

class AppInfoViewController: UIViewController {
    
    @IBOutlet weak var appInfoLabel: UILabel!
    
    @IBOutlet weak var appDescriptionLabel: UILabel!
    
    var infoText = String()
    let appDescText = "This App is a home work project"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescriptionLabel.text = appDescText
        
        if !infoText.isEmpty{
            appInfoLabel.text = infoText
        }
    }
}
