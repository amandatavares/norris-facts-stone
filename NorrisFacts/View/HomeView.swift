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
//        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.text = "Search some term or category to see some facts about Chuck Norris, 'cause he just know all the facts about you"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 15)
//        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            messageLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            messageLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            messageLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0)
        ])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
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
