//
//  TodayViewController.swift
//  widget
//
//  Created by Justin Lee on 5/7/17.
//  Copyright © 2017 risingmoon. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    let defaults = UserDefaults(suiteName: "group.com.risingmoon.counter")!
    
    // MARK: Properties
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        button.setTitle(defaults.string(forKey: "counter"), for:.normal)
        completionHandler(NCUpdateResult.newData)
    }
    
    // MARK: Actions
    @IBAction func button(_ sender: UIButton) {
        var counter = defaults.integer(forKey: "counter")
        counter += 1
        defaults.set(counter, forKey:"counter")
        defaults.synchronize()
        sender.setTitle(String(counter), for:.normal)
        sender.sizeToFit()
    }
    
}
