//
//  Museum.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 1/9/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//

import UIKit

struct Museum{
    
    var museum: String
    var url: String
    var description: String
    var image: String
    
    init(museumText: String, urlText: String, detalles: String, imageURL: String) {
        
        museum = museumText
        url = urlText
        description = detalles
        image = imageURL
    }
}
