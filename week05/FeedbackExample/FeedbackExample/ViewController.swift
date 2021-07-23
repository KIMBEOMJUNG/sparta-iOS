//
//  ViewController.swift
//  FeedbackExample
//
//  Created by 김범중 on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonDidClick(_ sender: Any) {
        let impact = UIImpactFeedbackGenerator()
        impact.impactOccurred()
    }
    
}

