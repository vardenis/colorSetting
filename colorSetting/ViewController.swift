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
    
    @IBOutlet var colorWindow: UIView!
    
    private var redColorValue: CGFloat!
    private var greenColorValue: CGFloat!
    private var blueColorValue: CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorValue = CGFloat(sliderRead.value)
        greenColorValue = CGFloat(sliderGreen.value)
        blueColorValue = CGFloat(sliderBlue.value)
        
        labelRed.text = String(format: "%.2f", sliderRead.value)
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        
        colorWindow.layer.cornerRadius = 10
        colorWindow.backgroundColor = UIColor(red: redColorValue, green: greenColorValue, blue: blueColorValue, alpha: 1)
    }

    
    @IBAction func sliderRedAction() {
        redColorValue = CGFloat(sliderRead.value)
        
        colorWindow.backgroundColor = UIColor(red: redColorValue, green: greenColorValue, blue: blueColorValue, alpha: 1)
        
        labelRed.text = String(format: "%.2f", sliderRead.value)
    }
    
    @IBAction func sliderGreenAction() {
        greenColorValue = CGFloat(sliderGreen.value)
        
        colorWindow.backgroundColor = UIColor(red: redColorValue, green: greenColorValue, blue: blueColorValue, alpha: 1)
        
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
    }
    
    @IBAction func sliderBlueAction() {
        blueColorValue = CGFloat(sliderBlue.value)
            
        colorWindow.backgroundColor = UIColor(red: redColorValue, green: greenColorValue, blue: blueColorValue, alpha: 1)
        
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
    }
    
}

