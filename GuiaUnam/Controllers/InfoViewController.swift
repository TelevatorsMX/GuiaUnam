//
//  InfoViewController.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 1/11/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//

import UIKit
import MXParallaxHeader

class InfoViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var horarioLabel: UILabel!
    @IBOutlet weak var precioLabel: UILabel!
    
    @IBOutlet weak var tempExpositionsButton: UIButton!
    @IBOutlet weak var webButton: UIButton!
    @IBOutlet weak var mapButton: UIButton!
    
    var name: String!
    var url: String!
    var detail: String!
    var schedule: String!
    var price: String!
    
    var imageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.contentMode = .scaleToFill
        imageView.backgroundColor = UIColor.gray
        scrollView.parallaxHeader.view = imageView
        scrollView.parallaxHeader.mode = MXParallaxHeaderMode.fill
        scrollView.parallaxHeader.minimumHeight = 0
        scrollView.parallaxHeader.height = UIScreen.main.bounds.height * 0.4
        
        tempExpositionsButton.layer.cornerRadius = 5
        tempExpositionsButton.layer.masksToBounds = true
        tempExpositionsButton.layer.borderWidth = 1
        tempExpositionsButton.layer.borderColor = UIColor(red: 255, green: 204, blue: 0, alpha: 1).cgColor
        
        webButton.layer.cornerRadius = 5
        webButton.layer.masksToBounds = true
        webButton.layer.borderWidth = 1
        webButton.layer.borderColor = UIColor(red: 255, green: 204, blue: 0, alpha: 1).cgColor
        
        mapButton.layer.cornerRadius = 5
        mapButton.layer.masksToBounds = true
        mapButton.layer.borderWidth = 1
        mapButton.layer.borderColor = UIColor(red: 255, green: 204, blue: 0, alpha: 1).cgColor
        
        setData()
    }
    
    func setData() {
        
        self.nameLabel.text = name
        self.descriptionLabel.text = detail
        self.horarioLabel.text = schedule
        self.precioLabel.text = price
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
