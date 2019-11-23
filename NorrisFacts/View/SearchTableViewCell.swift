//
//  SearchTableViewCell.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 22/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    lazy var categoryLabel: UILabel = {
        let label = UILabel()
        //        label = UIFont.TextStyle.headline
        label.text = "Tecnology".uppercased()
        label.tintColor = .systemBlue
//        label.font = UIFont.systemFont(ofSize: 14.5)
        return label
    }()
    
    lazy var quoteLabel: UILabel = {
        let label = UILabel()
        label.text = "If a vampire bites Chuck Norris, it becomes his slave."
        label.tintColor = .systemGray
        return label
    }()
    
    lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGray3
        return line
    }()
    
    lazy var shareButton: UIButton = {
        let button = UIButton()
//        let image: UIImage = UIImage(named: "square.and.arrow.up")!
//        let label: UILabel = UILabel()
        let text = "Share"
        button.setTitle(text, for: .normal)
//        button.setImage(, for: .normal)
        button.addTarget(self, action: #selector(test), for: .touchUpInside)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .systemBackground
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            categoryLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 60.0),
            categoryLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30.0),
            categoryLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 30.0)
        ])
    }
    
    private func setup() {
        addSubviews()
        setupConstraints()
    }
    
    private func addSubviews() {
        addSubviews([categoryLabel, quoteLabel, shareButton])
    }

    @objc func test() {
        print("share button")
    }
}
