//
//  HomeViewController.swift
//  Netflix Clone
//
//  Created by Prasi Aravind on 11/20/22.
//

import UIKit

class HomeViewController: UIViewController {

    private let homeFeedTable: UITableView = {
        
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTable)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
    
}
