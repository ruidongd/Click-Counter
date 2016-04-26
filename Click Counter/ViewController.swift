//
//  ViewController.swift
//  Click Counter
//
//  Created by DaiRuidong on 16/4/25.
//  Copyright © 2016年 RuidongDai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let lable = UILabel()
        lable.frame = CGRectMake(150, 150, 60, 60)
        lable.text = "0"
        
        // must add the subview to the view so that user can see it
        self.view.addSubview(lable)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

