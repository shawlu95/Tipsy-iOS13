//
//  RerulstsViewController.swift
//  Tipsy
//
//  Created by main on 6/9/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var amount: Double = 0.0
    var tip: Double = 0.0
    var split: Double = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let result = amount * (1 + tip) / split
        totalLabel.text = String(format: "%.2f", result)
        settingsLabel.text = String(format: "Split between %i people, with %.0f%% tip", split, 100 * tip)
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
