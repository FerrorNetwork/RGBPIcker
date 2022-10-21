//
//  ViewController.swift
//  RGBPIcker
//
//  Created by Данил on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    
    
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenSlider.value = 1
        redSlider.value = 1
        blueSlider.value = 1
        
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 255
        greenSlider.minimumTrackTintColor = .green
        
        redSlider.minimumValue = 1
        redSlider.maximumValue = 255
        redSlider.minimumTrackTintColor = .red
        
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 255
        blueSlider.minimumTrackTintColor = .blue
        
        redLabel.text = String(Int(redSlider.value))
        blueLabel.text = String(Int(blueSlider.value))
        greenLabel.text = String(Int(greenSlider.value))
    }

    @IBAction func slidersAction(_ sender: Any) {
        redLabel.text = String(Int(redSlider.value))
        blueLabel.text = String(Int(blueSlider.value))
        greenLabel.text = String(Int(greenSlider.value))
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1)
    }
    
}

