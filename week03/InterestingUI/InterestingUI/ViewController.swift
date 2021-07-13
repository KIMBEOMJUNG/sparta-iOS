//
//  ViewController.swift
//  InterestingUI
//
//  Created by 김범중 on 2021. 7. 8..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        UIView.animate(withDuration: 0.6) {
            //self.imageView.frame = CGRect(x: 120, y: 120, width: 200, height: 200)
//            var view1 = UIView(frame: CGRect(x: 20, y: 100, width: 200, height: 200))
//            view1.backgroundColor = UIColor.black
//            self.view.addSubview(view1)
//
//            var view2 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//            view2.backgroundColor = UIColor.red
//            view1.addSubview(view2)
        }
        
    }
    
}

