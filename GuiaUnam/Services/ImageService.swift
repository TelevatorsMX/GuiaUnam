//
//  ImageService.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 1/18/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//

import UIKit

class ImageService{
    
    var cellImage: UIImage!
    
    func load(url: URL, completion: @escaping (UIImage?) -> Void) {
        if let data = try? Data(contentsOf: url) {
            if let image = UIImage(data: data) {
                DispatchQueue.main.async {completion(image)}
            }
            else {
                DispatchQueue.main.async {completion(nil)}
            }
        }
        else {
            DispatchQueue.main.async {completion(nil)}
        }
    }
}
