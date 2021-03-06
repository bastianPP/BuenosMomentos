//
//  WetherCell.swift
//  BuenosMomentos
//
//  Created by Sebastián González on 16/03/20.
//  Copyright © 2020 Sebastián González. All rights reserved.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabe: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.name
        self.temperatureLabe.text = "\(vm.currentTemperature.temperature.formatAsDegree)"
    }
    
}
