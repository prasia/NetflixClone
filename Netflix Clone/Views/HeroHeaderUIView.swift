//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Prasi Aravind on 11/21/22.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let downloadButton: UIButton = { // declare stuff like this inside a UIView for it to be a subview
        
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false // so we can make our own constraints
        return button
        
    }()
    
    private let playButton: UIButton = { // declare stuff like this inside a UIView for it to be a subview
        
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false // so we can make our own constraints
        return button
        
    }()
    
    private let heroImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()
    
    private func addGradient(){//transparent color at the top, fades to non-transpaernt as you go down
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [//the colors involved in the gradient
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor//have to refresh app when you change settings for this to refresh too
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        applyConstraints()
    }
    
    private func applyConstraints(){
        let playButtonConstraints = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90), // helpful to make your app more global and work with languages like arabic and stuff
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50), //make sure it doesn't move upwards
            playButton.widthAnchor.constraint(equalToConstant: 120),
        ]
        let downloadButtonConstraints = [
            downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -90),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            downloadButton.widthAnchor.constraint(equalToConstant: 120),

        ]
        
        NSLayoutConstraint.activate(playButtonConstraints)
        NSLayoutConstraint.activate(downloadButtonConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
