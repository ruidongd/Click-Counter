//
//  ViewController.swift
//  Click Counter
//
//  Created by DaiRuidong on 16/4/25.
//  Copyright © 2016年 RuidongDai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var label1, label2:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var label1 = UILabel()
        label1.frame = CGRectMake(150, 150, 60, 60)
        label1.text = "0"
        var label2 = UILabel()
        label2.frame = CGRectMake(250, 150, 60, 60)
        label2.text = "0"
        
        // set up a click button
        var button1 = UIButton()
        button1.frame = CGRectMake(150, 250, 100, 100)
        button1.setTitle("Increase", forState: .Normal)
        button1.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        var button2 = UIButton()
        button2.frame = CGRectMake(250, 250, 100, 100)
        button2.setTitle("Decrese", forState: .Normal)
        button2.setTitleColor(UIColor.blueColor(), forState: .Normal)

        
        // must add the subview to the view so that user can see it
        self.view.addSubview(label1)
        self.view.addSubview(label2)
        self.label1 = label1
        self.label2 = label2
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        // add action to the button when the button is pressed.
        button1.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func incrementCount(){
        self.count++
        self.label1.text = "\(count)"
        self.label2.text = "\(count)"
    }
    func decrementCount(){
        self.count--
        self.label1.text = "\(count)"
        self.label2.text = "\(count)"

    }
    


}

