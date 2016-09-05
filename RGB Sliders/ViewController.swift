//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Victor Lo on 9/4/16.
//  Copyright © 2016 Victor Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redSliders: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var colorSquare: UIView!
    @IBAction func updateBackGroundColor () {
let defaults = NSUserDefaults.standardUserDefaults()
       defaults.setFloat(redSliders.value, forKey: "red")
        defaults.setFloat(blueSlider.value, forKey: "blue")
        defaults.setFloat(greenSlider.value, forKey: "green")
        defaults.synchronize()
    
    
let red = CGFloat(redSliders.value)
let blue = CGFloat(blueSlider.value)
let green = CGFloat(greenSlider.value)
    
      colorSquare.layer.borderColor = UIColor.blackColor().CGColor
        
     colorSquare.layer.borderWidth = 1
        
     colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
if (segue.identifier) == "openColor" {
            
let newViewController = segue.destinationViewController
           newViewController.view.backgroundColor = colorSquare.backgroundColor
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
let defaults = NSUserDefaults.standardUserDefaults()
        redSliders.value = defaults.floatForKey("red")
        blueSlider.value = defaults.floatForKey("blue")
        greenSlider.value = defaults.floatForKey("green")
        
        updateBackGroundColor()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

