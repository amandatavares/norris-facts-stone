//
//  SearchViewController.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 20/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    let customView = SearchView()

    override func viewDidLoad() {
       super.viewDidLoad()
       self.view = customView
       
        // Do any additional setup after loading the view.
    }

}
