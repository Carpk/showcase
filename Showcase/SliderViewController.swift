//
//  SliderViewController.swift
//  Showcase
//
//  Created by Shawn Klein on 3/24/18.
//  Copyright © 2018 Shawn Klein. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController, UITextFieldDelegate {
    var redColor:CGFloat = 1.0
    var greenColor:CGFloat = 1.0
    var blueColor:CGFloat = 1.0
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redValue: UITextField!
    @IBOutlet weak var greenValue: UITextField!
    @IBOutlet weak var blueValue: UITextField!
    
    @IBAction func changeRed(_ sender: Any) {
        redColor = CGFloat(redSlider.value)
        redValue.text = String(format: "%.0f", Float(redColor * 255.0))
        updateColor()
    }
    @IBAction func changeGreen(_ sender: Any) {
        greenColor = CGFloat(greenSlider.value)
        greenValue.text = String(format: "%.0f", Float(greenColor * 255.0))
        updateColor()
    }
    @IBAction func changeBlue(_ sender: Any) {
        blueColor = CGFloat(blueSlider.value)
        blueValue.text = String(format: "%.0f", Float(blueColor * 255.0))
        updateColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redValue.delegate = self
        greenValue.delegate = self
        blueValue.delegate = self
        
        updateColor()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // With the UITextViewDelegate role, when you press Return, the text field calls
        // the textFieldShouldReturn function which is use to return the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func updateColor() {
        NSLog("Value for red: %@", redValue.text!)
        self.view.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

