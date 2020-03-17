//
//  AddWheaterCityViewController.swift
//  BuenosMomentos
//
//  Created by Sebastián González on 16/03/20.
//  Copyright © 2020 Sebastián González. All rights reserved.
//

import Foundation
import UIKit

protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    var delegate: AddWeatherDelegate?
    
    @IBAction func saveCityButtomPressed() {
        
        print ("Guardar")
        
        if let city = cityNameTextField.text {
            let weatherURL = URL(string: "https://samples.openweathermap.org/data/2.5/weather?q=\(city)&appid=b6907d289e10d714a6e88b30761fae22?units=imperial")!
            
            let weatherResoruce = Resource<WeatherViewModel>(url: weatherURL) { data in
                let weatherVM = try? JSONDecoder().decode(WeatherViewModel.self, from: data)
                return weatherVM
            }
            
            Webservice().load(resource: weatherResoruce) { [weak self] result in
                
                if let weatherVM = result {
                    if let delegate = self?.delegate {
                        delegate.addWeatherDidSave(vm: weatherVM)
                        self?.dismiss(animated: true, completion: nil)
                    }
                }
            }
        }
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
