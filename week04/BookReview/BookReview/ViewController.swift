//
//  ViewController.swift
//  BookReview
//
//  Created by 김범중 on 2021. 7. 18..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var parameters = [
            "title_give": "너무나도 쉬운 iOS 개발",
            "author_give": "김범중",
            "review_give": "재밌어요!"
        ]

        AF.request("http://spartacodingclub.shop/review", method: .post, parameters: parameters).responseJSON { (response) in
            var json = JSON(response.value!)
            print(json)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

