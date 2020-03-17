//
//  AddWheaterCityViewController.swift
//  BuenosMomentos
//
//  Created by Sebastián González on 16/03/20.
//  Copyright © 2020 Sebastián González. All rights reserved.
//

import Foundation
import UIKit

class AddWeatherCtyViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtomPressed() {
        
        print ("Guardar")
        
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
