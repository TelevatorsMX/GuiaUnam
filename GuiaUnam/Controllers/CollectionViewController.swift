//
//  CollectionViewController.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 12/29/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit
import FirebaseDatabase

class CollectionViewController: UIViewController{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let dataArray = ["AAA","BBB","CCC","DDD","EEE","FFF","GGG","HHH","III"]
    var museums = [Museum]()
    var estimateWidth = 160.0
    var cellMarginSize = 16.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        self.collectionView.register(UINib(nibName: "ItemCell", bundle: nil), forCellWithReuseIdentifier: "ItemCell")
        
        setupGridView()
    
        downloadMuseums()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.setupGridView()
        
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
    
    func setupGridView(){
        let flow = collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        
        flow.minimumInteritemSpacing = CGFloat(self.cellMarginSize)
        flow.minimumLineSpacing = CGFloat(self.cellMarginSize)
    }
    
    func downloadMuseums(){
        
        let ref = Database.database().reference()
        ref.child("museos").observe(.childAdded) { (snapshot) in
            
            if let dict = snapshot.value as? [String:Any]{
                
                let museumText = dict["nombre"] as! String
                let urlText = dict["url"] as! String
                let museum = Museum(museumText: museumText, urlText: urlText)
                self.museums.append(museum)
                print(self.museums)
                self.collectionView.reloadData()
            }
        }
    }
}

extension CollectionViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let museumSelected = museums[indexPath.row]
        print("----------")
        print(museumSelected)
    }
}

extension CollectionViewController: UICollectionViewDataSource{ //Data Source
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.museums.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCell
        cell.setData(text: self.museums[indexPath.row].museum)
        
        return cell
    }
    
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout{ //Grid
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let widht = self.calculateWidth()
        
        return CGSize(width: widht, height: widht)
    }
    
    func calculateWidth() -> CGFloat {
        
        let estimatedWidth = CGFloat(estimateWidth)
        let cellCount = floor(CGFloat((self.view.frame.size.width) / estimatedWidth))
        
        let margin = CGFloat(cellMarginSize * 2)
        let widht = (self.view.frame.size.width - CGFloat(cellMarginSize) * (cellCount - 1) - margin) / cellCount
        
        return widht
    }
}
