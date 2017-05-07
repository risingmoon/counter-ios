//
//  ViewController.swift
//  counter
//
//  Created by Justin Lee on 5/7/17.
//  Copyright © 2017 risingmoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let defaults = UserDefaults.standard
    
    //MARK: Properties

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        defaults.set(0, forKey: "counter")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func button(_ sender: UIButton) {
        defaults.set(defaults.integer(forKey: "counter") + 1, forKey:"counter")
        sender.setTitle(defaults.string(forKey: "counter"), for:.normal)
        sender.sizeToFit()
    }
}

