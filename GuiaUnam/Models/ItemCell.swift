//
//  ItemCell.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 12/29/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {


    @IBOutlet weak var imageCell: UIImageView!
    var service = ImageService()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(image: String){
        let url = URL(string: image)!
        service.load(url: url, completion: { [weak self] (image) in
            self?.imageCell.image = image
        })
    }
    
}
