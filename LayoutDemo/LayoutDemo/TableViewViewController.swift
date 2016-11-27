//
//  TableViewViewController.swift
//  LayoutDemo
//
//  Created by Varshika on 26/11/16.
//  Copyright © 2016 SwiftPlus. All rights reserved.
//

import UIKit

class TableViewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as!TableViewCell
        cell.label.text = String(indexPath.row)
        cell.selectionStyle = .none
        return cell;
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
        let alert = UIAlertController(title: "Selected Item", message: String(indexPath.row), preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Okay",
                                      style: UIAlertActionStyle.default,
                                      handler: { action in self.someHandler(String(indexPath.row)) }))
        
        
        self.present(alert, animated:true, completion: nil)
    }
    
    func someHandler(_ selectedRow: String) {
        print("selected"+String(selectedRow))
        // Do something...
    }
}
