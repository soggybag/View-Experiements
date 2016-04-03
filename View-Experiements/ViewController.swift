//
//  ViewController.swift
//  View-Experiements
//
//  Created by mitchell hudson on 4/2/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let box = UIView()
    let smallBox = UIView()
    
    
    func onSlider(slider: UISlider) {
        let n = CGFloat(slider.value)
        box.frame.size.width = n
        box.frame.size.height = n
        
        // box.bounds.size.width = n
        // box.bounds.size.height = n
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        box.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        self.view.addSubview(box)
        box.backgroundColor = UIColor.redColor()
        box.center.x = 375 / 2
        box.center.y = 200
        box.clipsToBounds = true
        
        smallBox.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        smallBox.backgroundColor = UIColor.blueColor()
        
        box.addSubview(smallBox)
        
        
        
        
        let slider = UISlider()
        self.view.addSubview(slider)
        let w = self.view.frame.size.width
        slider.center.x = w / 2
        slider.center.y = 400
        slider.bounds.size.width = w - 40
        slider.maximumValue = 200
        slider.addTarget(self, action: #selector(ViewController.onSlider(_:)), forControlEvents: .ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

