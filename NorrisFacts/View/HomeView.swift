//
//  HomeView.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 17/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import UIKit

class HomeView: UIView {

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "norrisEmpty")
        imageView.alpha = 0.85
        return imageView
    }()
    
    private lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.text = "Search some term or category to see some facts about Chuck Norris, 'cause he just know all the facts about you"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 15)
        label.textAlignment = .center
        label.numberOfLines = 4
        return label
    }()
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.heightAnchor.constraint(lessThanOrEqualToConstant: 180.0),
            imageView.widthAnchor.constraint(lessThanOrEqualToConstant: 190.0),
            messageLabel.widthAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1.5),
            messageLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            messageLabel.centerXAnchor.constraint(equalToSystemSpacingAfter: self.imageView.centerXAnchor, multiplier: 0.1)
        ])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemBackground
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setup() {
        addSubviews()
        setupConstraints()
    }
    private func addSubviews() {
        addSubviews([imageView, messageLabel])
    }
    
}
