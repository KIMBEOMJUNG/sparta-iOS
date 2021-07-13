//
//  FlashViewController.swift
//  InterestingUI
//
//  Created by 김범중 on 2021. 7. 8..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class FlashViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonClicke(_ sender: Any) {
        view.backgroundColor = UIColor(red: 0.86, green: 0.24, blue: 0.00, alpha: 1.00)
        label.textColor = UIColor.black
        imageView.image = UIImage(named: "flashlight_on_icon.png")
        
    }
    
    @IBAction func offButtonClicke(_ sender: Any) {
        view.backgroundColor = UIColor.black
        label.textColor = UIColor.white
        imageView.image = UIImage(named: "flashlight_off_icon.png")
    }
    

}
