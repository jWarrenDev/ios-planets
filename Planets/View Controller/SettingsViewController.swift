//
//  SettingsViewController.swift
//  Planets
//
//  Created by Welinkton on 9/13/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
  
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    
    private func updateViews() {
        let userDefaults = UserDefaults.standard
        shouldShowPlutoSwitch.isOn = userDefaults.bool(forKey: .shouldShowPlutoKey)
    }
    
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        
    // lets create a key from the extension
    // userDefaults.set(sender.isOn, forKey:"ShouldShowPlutoKey")
        
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey )
        
    }
    
 
    
}
