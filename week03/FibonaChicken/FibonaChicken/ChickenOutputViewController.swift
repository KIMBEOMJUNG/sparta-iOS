//
//  ChickenOutputViewController.swift
//  FibonaChicken
//
//  Created by 김범중 on 2021. 7. 8..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class ChickenOutputViewController: UIViewController {

    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var chickenLabel: UILabel!
    
    var numberOfPeople: Int = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        peopleLabel.text = "\(numberOfPeople)명이서\n먹는다면..."
        chickenLabel.text = "\(calculateChicken())마리를 시키거라"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculateChicken() -> Int{
        var peopleDivided = Double(numberOfPeople) / 1.618
        var chicken = round(peopleDivided)
        return 1
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
