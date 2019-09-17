//
//  Flight.swift
//  amelia
//
//  Created by Justin Lindberg on 9/14/19.
//  Copyright © 2019 Justin Lindberg. All rights reserved.
//

import UIKit

import Foundation

struct Flight: Decodable {
    
    let flightNumber: String
    let origin: Airport
    let destination: Airport
    let distance: Int
    let duration: Duration
    let aircraft: Aircraft
}

struct Airport: Decodable {
    let code: String
    let city: String
    let location: Location
}

struct Location: Decodable {
    let latitude: Double
    let longitude: Double
}

struct Duration: Decodable {
    let locale: String
    let hours: Int
    let minutes: Int
}

struct Aircraft: Decodable {
    let model: String
    let speed: Int
}
