//
//  ViewController.swift
//  LectureVII_ColorDice
//
//  Created by Pei Wu on 2018/8/28.
//  Copyright © 2018年 Pei Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewColor: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func colorSliderChange(_ sender: UISlider) {
        imageViewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    
        var numberString = String(format:"%.2f", sender.value)
        
        if sender == redSlider {
            redLabel.text = numberString
        } else if sender == blueSlider {
            blueLabel.text = numberString
        } else if sender == greenSlider {
            greenLabel.text = numberString
        } else if sender == alphaSlider {
            alphaLabel.text = numberString
        }
    
    }
    
    @IBAction func randomChange(_ sender: Any) {
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let randomAlpha = CGFloat.random(in: 0...1)
        
        imageViewColor.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: randomAlpha)
        
        redSlider.value = Float(randomRed)
        redLabel.text = String(format:"%.2f", randomRed)
        greenSlider.value = Float(randomGreen)
            greenLabel.text = String(format:"%.2f", randomGreen)
        blueSlider.value = Float(randomBlue)
            blueLabel.text = String(format:"%.2f", randomBlue)
        alphaSlider.value = Float(randomAlpha)
            alphaLabel.text = String(format:"%.2f", randomAlpha)
        
        
    }
    
    
    
}


