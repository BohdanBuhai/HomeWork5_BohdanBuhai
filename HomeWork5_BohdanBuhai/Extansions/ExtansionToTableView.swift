//
//  ExtansionToTableView.swift
//  HomeWork5_BohdanBuhai
//
//  Created by Bohdan on 5/29/23.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Base.shared.arrayShoppings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
         let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = Base.shared.arrayShoppings[indexPath.row].name
        return cell ?? UITableViewCell()
    }
    
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let delete = UIContextualAction(style: .destructive, title: "Delete", handler: {_,_,_ in
            print("Delete button tapped......")
            self.tableView.beginUpdates()
            Base.shared.arrayShoppings.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            self.tableView.endUpdates()
        })
       
        let swipe = UISwipeActionsConfiguration(actions: [delete])
        return swipe
    }
    
}

