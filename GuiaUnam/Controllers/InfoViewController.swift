//
//  InfoViewController.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 1/10/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setData(nametext: String, urlText: String, image: UIImage){
        self.nameLabel.text = nametext
        self.urlLabel.text = urlText
        self.imageView.image = image
        
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
