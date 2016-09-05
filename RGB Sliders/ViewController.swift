//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Victor Lo on 9/4/16.
//  Copyright © 2016 Victor Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var purpleSliders: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var colorSquare: UIView!
    @IBAction func updateBackGroundColor () {
    
    
    let purple = CGFloat(purpleSliders.value) //i used purple just to test if the color changes in any way.
    let blue = CGFloat(blueSlider.value)
    let green = CGFloat(greenSlider.value)
    
      colorSquare.layer.borderColor = UIColor.blackColor().CGColor
        
     colorSquare.layer.borderWidth = 1
        
     colorSquare.backgroundColor = UIColor(red: purple, green: green, blue: blue, alpha: 1)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "openColor" {
            
       let newViewController = segue.destinationViewController
        newViewController.view.backgroundColor = colorSquare.backgroundColor
            
        }
        
        
        
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateBackGroundColor()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

