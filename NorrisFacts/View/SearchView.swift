//
//  SearchView.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 17/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import UIKit

class SearchView: UIView {
    //    let datasource = HomeDataSource()

      private lazy var tableView: UITableView = {
            let tableView = UITableView()
            tableView.translatesAutoresizingMaskIntoConstraints = false
    //        table.register(StoryTableViewCell.self, forCellReuseIdentifier: "storyCell")
    //        table.delegate = self
    //        table.dataSource = datasource
            tableView.separatorStyle = .none
            tableView.backgroundColor = .clear
    //        table.showsVerticalScrollIndicator = false
            return tableView
        }()
        
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            tableView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            tableView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0)
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
        addSubviews([tableView])
    }
}
