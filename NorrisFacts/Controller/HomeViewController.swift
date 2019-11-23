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
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        // step 1 = create Navigation Bar
        let navbar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 59.0))
        navbar.delegate = self
//        navbar.prefersLargeTitles = true

        navbar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navbar.shadowImage = UIImage()
        
        //step 3 = create BarButtonItem and set position (left, right)
        let searchIcon = UIImage(systemName: "magnifyingglass")
        let search = UIBarButtonItem(image: searchIcon, style: .plain, target: self, action: #selector(searchBtnTapped))
        search.tintColor = .label
        self.navigationItem.rightBarButtonItem = search
        title = "Explore"

        //step 5 = add Navigation Bar to view
        self.view.addSubview(navbar)
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
