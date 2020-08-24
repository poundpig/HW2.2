//
//  ViewController.swift
//  HW2.2
//
//  Created by fd on 24.08.2020.
//  Copyright © 2020 Denis Fedorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var rSlider: UISlider! {
    didSet{
        rSlider.tintColor = UIColor.red
    }
    }
    @IBOutlet weak var gSlider: UISlider! {
    didSet{
        gSlider.tintColor = UIColor.green
    }
    }
    @IBOutlet weak var bSlider: UISlider! {
    didSet{
        bSlider.tintColor = UIColor.blue
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1)
    }
    
    @IBAction func rgbSliderChanged(_ sender: Any) {
        changeColor()
    }
    
}
