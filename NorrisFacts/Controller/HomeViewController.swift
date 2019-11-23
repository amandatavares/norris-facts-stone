//
//  HomeViewController.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 17/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UINavigationBarDelegate, UINavigationControllerDelegate {

    let customView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = customView
        setupNavBar()
    }
    
    private func setupNavBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        // Add search icon
        let searchIcon = UIImage(systemName: "magnifyingglass")
        let search = UIBarButtonItem(image: searchIcon, style: .plain, target: self, action: #selector(searchBtnTapped))
        search.tintColor = .label
        self.navigationItem.rightBarButtonItem = search
        title = "Explore"
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
