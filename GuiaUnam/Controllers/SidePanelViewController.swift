//
//  SidePanelViewController.swift
//  GuiaUnam
//
//  Created by Axel Cervantes on 1/13/19.
//  Copyright © 2019 Miguel Vicario. All rights reserved.
//
/// Copyright (c) 2017 Razeware LLC
///

import UIKit

class SidePanelViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var menuElements: Array<MenuElement>!
    
    enum CellIdentifiers {
        static let menuElementCell = "MenuElementCell"
        static let menuElementLoginCell = "MenuElementLoginCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reloadData()
    }
}

// MARK: Table View Data Source
extension SidePanelViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuElements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellReturn: UITableViewCell = UITableViewCell()
        if let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.menuElementCell, for: indexPath) as? MenuElementCell{
            cell.configureMenuElement(menuElements[indexPath.row])
            cellReturn = cell
        }
        else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.menuElementLoginCell, for: indexPath) as? MenuElementCell{
            cell.configureMenuElement(menuElements[indexPath.row])
            cellReturn = cell
            }
            
        }
        return cellReturn
    }
    
}

// Mark: Table View Delegate

extension SidePanelViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
