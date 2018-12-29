//
//  CollectionViewController.swift
//  GuiaUnam
//
//  Created by Miguel Vicario on 12/29/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController{
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let dataArray = ["AAA","BBB","CCC","DDD","EEE","FFF","GGG","HHH","III"]
    var estimateWidth = 160.0
    var cellMarginSize = 16.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        self.collectionView.register(UINib(nibName: "ItemCell", bundle: nil), forCellWithReuseIdentifier: "ItemCell")
        
        self.setupGridView()
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
}

extension CollectionViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCell
        cell.setData(text: self.dataArray[indexPath.row])
        
        return cell
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout{
    
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
