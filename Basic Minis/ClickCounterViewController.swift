//
//  ClickCounterViewController.swift
//  Basic Minis
//
//  Created by Dane Miller on 6/11/17.
//  Copyright © 2017 Dane Miller. All rights reserved.
//

import UIKit

class ClickCounterViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addOne(_ sender: Any) {
        count += 1
        updateUI()
    }

    @IBAction func minusOne(_ sender: Any) {
        count -= 1
        updateUI()
    }
    
    func updateUI(){
        counterLabel.text = String(count)
    }
    
}
