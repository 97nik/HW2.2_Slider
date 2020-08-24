//
//  ViewController.swift
//  slider
//
//  Created by Никита Микрюков on 27.06.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var sliderOne: UISlider!
    @IBOutlet weak var sliderTwo: UISlider!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    @IBOutlet weak var sliderThree: UISlider!

    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func slider(_ sender: UISlider) {
        
        switch sender.tag {
        case 0:
            labelRed.text = String(Int(sliderOne.value))
            
        case 1:
              labelBlue.text = String(Int(sliderTwo.value))
        case 2:
              labelGreen.text = String(Int(sliderThree.value))
        default:
            break
        }
        colorView.backgroundColor = UIColor(red:CGFloat(sliderOne.value)/255, green:CGFloat(sliderTwo.value)/255 , blue: CGFloat(sliderThree.value)/255, alpha: 1)
 
           
    }
    
}

