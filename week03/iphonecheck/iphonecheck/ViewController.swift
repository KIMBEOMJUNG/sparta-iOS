//
//  ViewController.swift
//  iphonecheck
//
//  Created by 김범중 on 2021. 7. 13..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var handsize: UITextField!
    @IBOutlet weak var resultButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //resultButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if var output = segue.destination as? ResultViewController {
            var temp = handsize.text
            print("temp:\(temp)")
            output.resultSize = temp!
        }
    }



}

