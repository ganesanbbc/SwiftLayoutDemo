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
        return 10;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as!TableViewCell
        

        cell.label.text = String(indexPath.row)
        
//        let cell = TableViewCell()
//        cell.textLabel?.text = String(indexPath.row)
        return cell;
    }
}
