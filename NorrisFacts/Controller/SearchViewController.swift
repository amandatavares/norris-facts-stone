//
//  SearchViewController.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 20/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class SearchViewController: UIViewController {
    let customView = SearchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = customView
        
    }
    
    private func setupNavBar() {
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.prompt = "Searched term"
        title = "\("Star Wars")" // add searched term from viewModel
    }

}
