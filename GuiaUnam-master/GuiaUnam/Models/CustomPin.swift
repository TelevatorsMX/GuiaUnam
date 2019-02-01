//
//  CustomPin.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 1/30/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//

import MapKit

class CustomPin: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(pinTitle: String, pinSubtitle: String, location: CLLocationCoordinate2D){
        
        self.title = pinTitle
        self.subtitle = pinSubtitle
        self.coordinate = location
    }
    
}

