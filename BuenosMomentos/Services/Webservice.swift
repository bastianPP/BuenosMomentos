//
//  Webservice.swift
//  BuenosMomentos
//
//  Created by Sebastián González on 16/03/20.
//  Copyright © 2020 Sebastián González. All rights reserved.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}


final class Webservice {
    
    func load<T>(resource: Resource<T>, completion: @escaping (T?) -> ()) {
        
        URLSession.shared.dataTask(with: resource.url) { (data, response, error) in
            
            
            
            if let data = data {
                print(String(data: data, encoding: .utf8))
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            } else {
                completion(nil)
            }
        }.resume()
        
    }
}
