//
//  ViewController.swift
//  counter
//
//  Created by Justin Lee on 5/7/17.
//  Copyright © 2017 risingmoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number = 0
    
    //MARK: Properties

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func button(_ sender: UIButton) {
        number += 1
        sender.setTitle(String(number), for:.normal)
        sender.sizeToFit()
    }
}

