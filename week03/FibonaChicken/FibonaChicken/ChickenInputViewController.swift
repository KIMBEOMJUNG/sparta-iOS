//
//  ChickenInputViewController.swift
//  FibonaChicken
//
//  Created by 김범중 on 2021. 7. 8..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class ChickenInputViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var resultButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultButton.layer.cornerRadius = 10
        //resultButton.clipsToBounds = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func textEditingChanged(_ sender: Any) {
        var text = textField.text ?? ""
        stepper.value = Double(text) ?? 0
        
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        var value = stepper.value
        textField.text = String(Int(value))
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //화면이 넘어갈때 실행해주는 함수
        if var controller = segue.destination as? ChickenOutputViewController{
            controller.numberOfPeople = Int(stepper.value)
            
        }

        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
