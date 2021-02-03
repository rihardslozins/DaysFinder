//
//  AppearanceViewController.swift
//  DaysFinder
//
//  Created by Rihards Lozins on 03/02/2021.
//

import UIKit

class AppearanceViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBOutlet weak var settingsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsButton.layer.cornerRadius = 12
    }
    
    
    @IBAction func openSettingsButtonTapped(_ sender: Any) {
        openSettings()
        
    }
    
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setLabelText() {
        var text = "Unable to specify UI style"
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark mode is ON \n Go to settings if you would like to \nchange to Light mode"
        } else {
            text = "Light mode is ON \n Go to settings if you would like to \nchange to Dark mode"
        }
        textLabel.text = text
    }
    
    func openSettings() {
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL) {
            UIApplication.shared.open(settingsURL, options: [:]) { (success) in
                print("open: ", success)
            }
        }
    }
}

extension AppearanceViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}
