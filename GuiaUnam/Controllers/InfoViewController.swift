//
//  InfoViewController.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 1/11/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var museumImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var detailText: UITextView!
    var name: String!
    var url: String!
    var detail: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setData()
        // Do any additional setup after loading the view.
    }
    
    func setData(){
        self.nameLabel.text = name
        self.urlLabel.text = url
        self.detailText.text = detail
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
