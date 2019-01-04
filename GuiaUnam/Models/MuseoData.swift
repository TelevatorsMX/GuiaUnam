//
//  MuseoData.swift
//  GuiaUnam
//
//  Created by Axel Cervantes on 1/4/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//

import Foundation
import UIKit

public struct MuseoData {
    var museoName: String
    var museoImage : UIImage?
    var museoDescription: String
    var datoCurioso: String?
    var urlVideo: URL?
}

let imagenMUAC: UIImage? = UIImage(named: "MUAC")
let descripciónImagenMuac = "Este museo es el museo de arte contemporaneo"

public var museoPrueba = MuseoData(museoName: "MuseoPrueba", museoImage: imagenMUAC, museoDescription: descripciónImagenMuac, datoCurioso: nil, urlVideo: nil)





