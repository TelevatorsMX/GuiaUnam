//
//  ItemCell.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 12/29/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(text: String, image: UIImage){
        self.textLabel.text = text
        self.imageCell.image = image
    }
    
}
