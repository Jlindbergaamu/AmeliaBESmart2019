//
//  URLprotocol.swift
//  amelia
//
//  Created by Justin Lindberg on 9/14/19.
//  Copyright © 2019 Justin Lindberg. All rights reserved.
//

import UIKit
import Foundation

struct URLprotocol{
    func makeGETRequest() throws  -> [Flight] {
        let array:[Flight] = []
        let firstSession = URLSession.shared
        let url = URL(string: "https://flight-engine-behack2019.herokuapp.com/flights?date=2019-09-13&originin=lax&destination=dfw")
        
        firstSession.dataTask(with: url!) { (data, response, error) in
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }
                catch{
                    print(error)
                }
            }
            else {
                print("error message, no data returned")
            }
            }.resume()
        return array
        
        
        
    }
    
}

