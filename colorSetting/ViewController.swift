//
//  ViewController.swift
//  colorSetting
//
//  Created by Денис on 30.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var sliderRead: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelRed.text = String(format: "%.2f", sliderRead.value)
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
    }

    
    @IBAction func sliderRedAction() {
        labelRed.text = String(format: "%.2f", sliderRead.value)
    }
    
    @IBAction func sliderGreenAction() {
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
    }
    
    @IBAction func sliderBlueAction() {
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
    }
    
}

