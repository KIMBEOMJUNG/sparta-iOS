//
//  ViewController.swift
//  SwiftPractice1
//
//  Created by 김범중 on 2021. 6. 29..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffSwitch: UISwitch!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var isBackSide = true
    @IBAction func onOffSwitchValueChanged(_ sender: Any) {
        UIView.transition(with: imageView, duration: 0.6, options: .transitionFlipFromLeft, animations: {
            if self.onOffSwitch.isOn{//스위치액션에는 on off를 나태내는 기능이 기본으로 들어가 있다. isOn은 스위치가 on되어있을때를 뜻함
                self.imageView.image = UIImage(named:"ace")
            } else {
                self.imageView.image = UIImage(named: "poker")
            }
        }) { (animated) in
            //self.isBackSide = !self.isBackSide //상태를 뒤집어 주는 문법 자주쓰일듯
        }
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        UIView.transition(with: imageView, duration: 0.6, options: .transitionFlipFromLeft, animations: {
            if self.isBackSide{
                self.imageView.image = UIImage(named:"ace")
            } else {
                self.imageView.image = UIImage(named: "poker")
            }
        }) { (animated) in
            self.isBackSide = !self.isBackSide //상태를 뒤집어 주는 문법 자주쓰일듯
        }
        
        
        
    }
    
}

