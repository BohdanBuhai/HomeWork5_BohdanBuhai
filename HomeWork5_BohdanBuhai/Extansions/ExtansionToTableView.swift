//
//  ExtansionToTableView.swift
//  HomeWork5_BohdanBuhai
//
//  Created by Bohdan on 5/29/23.
//

import Foundation
import UIKit
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
    
    
}
