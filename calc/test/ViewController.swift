//
//  ViewController.swift
//  test
//
//  Created by xianhui chen on 2017-10-31.
//  Copyright © 2017 xianhui chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
   
   var display_num : Double = 0
    @IBOutlet weak var display: UILabel!
    var present_num : Double = 0
    var previous_num : Double = 0
    var preforming = false
    var operation = 0
   @IBAction func num(_ sender: UIButton) {
    if preforming == true{
        display.text = String(sender.tag-1)
        display_num = Double (display.text!)!
        preforming = false
    }
    else {
        display.text = display.text! + String(sender.tag-1)
        display_num = Double (display.text!)!
    }
    }
    
    @IBAction func operators(_ sender: UIButton) {
        if display.text != "" && sender.tag != 11 && sender.tag != 16 {
            previous_num = Double(display.text!)!
            if sender.tag == 12{
                display.text = "/";
                
            }
            else if  sender.tag == 13{
                display.text = "*";
                
            }
            else if  sender.tag == 14{
                display.text = "-";
            }
            else if  sender.tag == 15{
                display.text = "+";
            }
            operation = sender.tag
            preforming = true;
            
        }else if sender.tag == 16{
            if operation == 12
            {
            display.text = String(previous_num /  display_num )
            }
            else if operation == 13
            {
            display.text = String(previous_num
                * display_num)
            }
            else if operation == 14
            {
            display.text = String(previous_num - display_num)
            }
            else if operation == 15
            {
            display.text = String(previous_num + display_num)
            }
            }
            else if sender.tag == 11
            {
                display.text = ""
                previous_num = 0;
                display_num = 0;
                operation = 0;
            }
            
            
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

