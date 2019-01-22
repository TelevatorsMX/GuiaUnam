//
//  Museum.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 1/9/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//

import UIKit
import CoreLocation

struct Museum{
    
    var museum: String
    var url: String
    var description: String
    var image: String
    var location: CLLocation?
    
    init(museumText: String, urlText: String, detalles: String, imageURL: String) {
        
        museum = museumText
        url = urlText
        description = detalles
        image = imageURL
    }
    
    init(museumText: String, urlText: String, detalles: String, imageURL: String, latitud: CLLocationDegrees, longitud: CLLocationDegrees) {
        
        museum = museumText
        url = urlText
        description = detalles
        image = imageURL
        location = CLLocation(latitude: latitud, longitude: longitud)
    }
    
}
