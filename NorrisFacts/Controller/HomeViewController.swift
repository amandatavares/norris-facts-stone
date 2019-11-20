//
//  HomeViewController.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 17/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let customView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar() 
        self.view = customView
        let searchIcon = UIImage(systemName: "magnifyingglass")
        let search = UIBarButtonItem(image: searchIcon, style: .plain, target: self, action: #selector(searchBtnTapped))
        search.tintColor = .black
        self.navigationItem.rightBarButtonItem = search
        
        title = "Explore"
    }
    
    private func setupNavBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
//        self.navigationController?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "test", style: .plain, target: nil, action: nil)
//        self.navigationController?.navigationItem.rightBarButtonItems = [UIBarButtonItem(title: "test", style: .plain, target: nil, action: nil)]
        
    }
    
    @objc func searchBtnTapped() {
        print("search tapped")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
