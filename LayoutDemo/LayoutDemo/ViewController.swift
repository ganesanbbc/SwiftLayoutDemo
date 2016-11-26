//
//  ViewController.swift
//  LayoutDemo
//
//  Created by Varshika on 23/11/16.
//  Copyright © 2016 SwiftPlus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.label.text = String(counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func preButtonClick(_ sender: Any) {
        self.counter = self.counter-1;
        self.label.text = String(self.counter)
    }
    

    @IBAction func nextBtnClick(_ sender: Any) {
        self.counter = self.counter+1;
        self.label.text = String(self.counter)

    }

}

