//
//  ResultViewController.swift
//  iphonecheck
//
//  Created by 김범중 on 2021. 7. 13..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var handText: UILabel!
    @IBOutlet weak var modelText: UILabel!
    @IBOutlet weak var modelImg: UIImageView!
    var resultSize: String = "F11"
    override func viewDidLoad() {
        super.viewDidLoad()
        print("resultSize:\(resultSize)")
        self.modelText.text = modelCheck()
        self.handText.text = "손크기 : \(resultSize)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func modelCheck() -> String{
        var checkData = resultSize
        var models = ""
        switch checkData {
        case "F11","F10","f11","f10":
            models = "적정모델 : Iphone 12pro max"
            modelImg.image = UIImage(named: "iphone12promax.jpeg")
        case "F9","F8","f9","f8" :
            models = "적정모델 : Iphone 12,12pro"
            modelImg.image = UIImage(named: "iphone12.jpeg")
        case "F7","f7" :
            models = "적정모델 : Iphone X,XS"
            modelImg.image = UIImage(named: "iphonex.jpg")
        case "F6","f6" :
            models = "적정모델 : Iphone SE2"
            modelImg.image = UIImage(named: "iphonese2.jpeg")
        case "F5","f5" :
            models = "적정모델 : Iphone12 mini"
            modelImg.image = UIImage(named: "iphone12mini.jpeg")
        case "F4","F3","F2","F1","f4","f3","f2","f1" :
            models = "적정모델 : Iphone se"
            modelImg.image = UIImage(named: "iphonese.jpeg")
        default:
            models = "잘못된 측정값 입니다."
        }
        
        return models
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
