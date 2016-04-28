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
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        // set up a click button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        // must add the subview to the view so that user can see it
        self.view.addSubview(label)
        self.label = label
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func incrementCount(){
        self.count++
        self.label.text = "\(count)"
    }
    


}

