//
//  ViewController.swift
//  test1
//
//  Created by 김범중 on 2021. 6. 21..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func turnon(_ sender: Any) {
        view.backgroundColor = UIColor.white;
        imageview.image = UIImage(named:"flashlight_on_icon")
    }
    
    @IBAction func turnoff(_ sender: Any) {
        view.backgroundColor = UIColor(red: 100 / 255.0, green: 30 / 255.0, blue: 200 / 255.0, alpha: 1);
        imageview.image = UIImage(named:"flashlight_off_icon")
    }
    
}

