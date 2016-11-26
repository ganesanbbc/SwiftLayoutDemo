//
//  TableViewViewController.swift
//  LayoutDemo
//
//  Created by Varshika on 26/11/16.
//  Copyright © 2016 SwiftPlus. All rights reserved.
//

import UIKit

class TableViewViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "myCell")
        cell.textLabel?.text = String(indexPath.row)
        cell.selectionStyle = .none
        return cell;
    }
}
