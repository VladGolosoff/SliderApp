//
//  ViewController.swift
//  SliderApp
//
//  Created by Владислав Голосов on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewColor: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumTrackTintColor = .red
        redSlider.value = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.value = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.value = 1
        redLabel.text = "R: " + String(format: "%.2F", redSlider.value)
        greenLabel.text = "G: " + String(format: "%.2F", greenSlider.value)
        blueLabel.text = "B: " + String(format: "%.2F", blueSlider.value)
        viewColor.layer.cornerRadius = 10
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        redLabel.text = "R: " + String(format: "%.2F", redSlider.value)
        greenLabel.text = "G: " + String(format: "%.2F", greenSlider.value)
        blueLabel.text = "B: " + String(format: "%.2F", blueSlider.value)

        let red = CGFloat(redSlider.value/1)
        let green = CGFloat(greenSlider.value/1)
        let blue = CGFloat(blueSlider.value/1)
        viewColor.backgroundColor = UIColor(red: red,
                                            green: green,
                                            blue: blue,
                                            alpha: 1)
        }
    
  
    }
    



