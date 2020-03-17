//
//  Double+Extensions.swift
//  BuenosMomentos
//
//  Created by Sebastián González on 17/03/20.
//  Copyright © 2020 Sebastián González. All rights reserved.
//

import Foundation

extension Double {
    var formatAsDegree: String {
        return String(format: "%.0f°", self)
    }
}
