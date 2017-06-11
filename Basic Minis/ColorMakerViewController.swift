//
//  ColorMakerViewController.swift
//  Basic Minis
//
//  Created by Dane Miller on 6/11/17.
//  Copyright © 2017 Dane Miller. All rights reserved.
//

import UIKit

class ColorMakerViewController: UIViewController {

    
    @IBOutlet weak var redControl: UISwitch!
    @IBOutlet weak var greenControl: UISwitch!
    @IBOutlet weak var blueControl: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redControl == nil {
            return
        }
        
        let r: CGFloat = self.redControl.isOn ? 1 : 0
        let g: CGFloat = self.greenControl.isOn ? 1 : 0
        let b: CGFloat = self.blueControl.isOn ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
    
    @IBAction func changeColorSlider() {
        
        
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }

}
