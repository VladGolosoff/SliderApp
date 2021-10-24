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
        redLabel.text = "Red: \(redSlider.value)"
        greenLabel.text = "Green: \(greenSlider.value)"
        blueLabel.text = "Blue: \(blueSlider.value)"
        viewColor.layer.cornerRadius = 10
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        redLabel.text = "Red: \(redSlider.value)"
        greenLabel.text = "Green: \(greenSlider.value)"
        blueLabel.text = "Blue: \(blueSlider.value)"

        let red = CGFloat(redSlider.value/1)
        let green = CGFloat(greenSlider.value/1)
        let blue = CGFloat(blueSlider.value/1)
        viewColor.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        }
    
    }
    



