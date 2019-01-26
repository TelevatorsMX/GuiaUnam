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
    
    
    var name: String!
    var url: String!
    var detail: String!
    var imageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.contentMode = .scaleToFill
        imageView.backgroundColor = UIColor.gray
        scrollView.parallaxHeader.view = imageView
        scrollView.parallaxHeader.mode = MXParallaxHeaderMode.fill
        scrollView.parallaxHeader.minimumHeight = 0
        scrollView.parallaxHeader.height = UIScreen.main.bounds.height * 0.4
        setData()
        // Do any additional setup after loading the view.
    }
    
    func setData(){
        self.nameLabel.text = name
        self.descriptionLabel.text = detail + detail + detail
        
//        self.nameLabel.text = name
//        self.urlLabel.text = url
//        self.detailText.text = detail
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
