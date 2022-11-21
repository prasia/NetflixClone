//
//  CollectionViewTableViewCell.swift
//  Netflix Clone
//
//  Created by Prasi Aravind on 11/20/22.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

    static let identifier = "CollectionViewTableViewCell"
    
    private let collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()// Let you get grid based layout
        layout.scrollDirection = .horizontal // let the user scroll through the section each horizontally
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }() //returning objects needs the parentheseies
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
