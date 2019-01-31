//
//  MenuElementCell.swift
//  GuiaUnam
//
//  Created by Axel Cervantes on 1/14/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//

import UIKit

class MenuElementCell: UITableViewCell {
    
    //@IBOutlet weak var menuElementImageView: UIImageView!
    @IBOutlet weak var menuElementNameLabel: UILabel!
    @IBOutlet weak var descriptionMenuElementLabel: UILabel!
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    func configureMenuElement(_ menuElement: MenuElement) {
        
        menuElementNameLabel.text = menuElement.name
        descriptionMenuElementLabel.text = menuElement.description
    }
    
    func configureProfileElement(_ menuElement: MenuElement){
        
        usernameLabel.text = "Nombre de usuario"
        
    }
}
