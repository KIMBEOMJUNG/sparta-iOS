//
//  ViewController.swift
//  SwiftPractice2
//
//  Created by 김범중 on 2021. 6. 29..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFields: [UITextField]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonClicked(_ sender: Any) {
        for i in 0..<textFields.count{
            for textField in textFields {
                if i % 2 == 0{
                    textField.text = "홀수번째만 텍스트가 들어갑니다!"
                }
            }
        }
        var i = 0
        
        for textField in textFields {
            if i % 2 == 0{
                textField.text = "홀수번째만 텍스트가 들어갑니다!"
            }
            
            i += 1
        }
    }
}

