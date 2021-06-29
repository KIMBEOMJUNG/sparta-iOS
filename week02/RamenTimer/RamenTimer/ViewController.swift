//
//  ViewController.swift
//  RamenTimer
//
//  Created by 김범중 on 2021. 6. 29..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var timerButton: UIButton!
    
    @IBOutlet weak var segment: UISegmentedControl!
    var secondsLeft: Int = 180
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timerButton.layer.cornerRadius = 10//모서리 깍아주는 코드
        
        self.secondsLeft = 180
        self.updateTimerLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func resetTimer(){
        timer?.invalidate()//타이머종료
        timer=nil//타이머 지워주기
        timerButton.setTitle("타이머 시작하기",for: .normal)
    }
    
    func updateTimerLabel(){
        var minutes = self.secondsLeft / 60
        var seconds = self.secondsLeft % 60
        
        if self.secondsLeft < 10 {
            self.timerLabel.textColor = UIColor.red
        } else {
            self.timerLabel.textColor = UIColor.black
        }
        UIView.transition(with: self.timerLabel, duration: 0.3, options: .transitionFlipFromBottom, animations: {
            if self.secondsLeft > 0{
                self.timerLabel.text = String(format : "%02d:%02d", minutes, seconds)//출력포맷 설정 출력자리수를 지정해줄수 있음
            }else{
                self.timerLabel.text = "시간 끝"
            }
        }) { (animated) in
            
        }
        
        
    }
    
    @IBAction func segmentValueChanged(_ sender: Any) {//2주차 숙제 코드!
        print(segment.selectedSegmentIndex)
        if(segment.selectedSegmentIndex == 0){
            self.secondsLeft = 180
            print("3분타이머")
        }else if(segment.selectedSegmentIndex == 1){
            self.secondsLeft = 240
            print("4분타이머")
        }else if(segment.selectedSegmentIndex == 2){
            self.secondsLeft = 300
            print("5분타이머")
        }
        self.updateTimerLabel()
    }
    @IBAction func timerButtonClicked(_ sender: Any) {
        if timer != nil{
            resetTimer()
            return
        }
        self.timerButton.setTitle("타이머 종료하기", for: .normal)
        //self.secondsLeft = 180
        self.updateTimerLabel()
        
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (t) in
            self.secondsLeft -= 1
            self.updateTimerLabel()
            
            if self.secondsLeft == 0{
                self.resetTimer()
            }
            
        }
    }
}

