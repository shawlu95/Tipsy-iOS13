//
//  Calculator.swift
//  Tipsy
//
//  Created by main on 6/10/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Calculator {
    let amount: Double
    let tip: Double
    let split: Double
    
    var total: Double {
        return amount * (1 + tip) / split
    }
    
    var totalString: String {
        return String(format: "%.2f", total)
    }
    
    var settingString: String {
        return String(format: "Split between %.0f people, with %.0f%% tip", split, 100 * tip)
    }

    init(amount: Double, tip: Double, split: Double) {
        self.amount = amount
        self.tip = tip
        self.split = split
    }
}
