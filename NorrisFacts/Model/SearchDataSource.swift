//
//  SearchDataSource.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 24/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import UIKit

class SearchDataSource: NSObject, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchCell", for: indexPath)
        
        return cell
    }
    
}
