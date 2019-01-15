//
//  CenterViewController.swift
//  GuiaUnam
//
//  Created by Axel Cervantes on 1/13/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//

import UIKit

class CenterViewController: UIViewController {
    
    @IBOutlet weak fileprivate var imageView: UIImageView!
    @IBOutlet weak fileprivate var titleLabel: UILabel!
    @IBOutlet weak fileprivate var creatorLabel: UILabel!
    
    var delegate: CenterViewControllerDelegate?
    
    // MARK: Button actions
    @IBAction func buttonMenuTapped(_ sender: Any) {
        delegate?.toggleLeftPanel?()
    }
    
    //@IBAction func puppiesTapped(_ sender: Any) {}
}

