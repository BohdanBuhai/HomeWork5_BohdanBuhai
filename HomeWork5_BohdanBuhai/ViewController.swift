//
//  ViewController.swift
//  HomeWork5_BohdanBuhai
//
//  Created by Bohdan on 5/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
            self.title = "Shopping List"
            self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func saveData(shopp: String) {
        let shopps = Shopping(name: shopp)
        Base.shared.arrayShoppings.append(shopps)
    }
    
    @IBAction func barButtonPresed(_ sender: Any) {
        let alert = UIAlertController(title: "Add new", message: "whot you vont to buy?", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Type in your PIN for it to work"
        })
        
        let ok = UIAlertAction(title: "OK", style: .default) { action  in
            print("Ok button tapped")
            
            guard let taxtfield = alert.textFields?.first,
                  let thingSave = taxtfield.text else {return}
            
            self.saveData(shopp: thingSave)
            self.tableView.reloadData()
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
            print("Cancel button tapped")
        }
        alert.addAction(ok)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
    }
}

