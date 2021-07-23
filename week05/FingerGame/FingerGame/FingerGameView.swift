//
//  FingerGameView.swift
//  FingerGame
//
//  Created by 김범중 on 2021. 7. 23..
//  Copyright © 2021년 김범중. All rights reserved.
//

import UIKit

class FingerGameView: UIView {
    
    var touchToRoundView: [UITouch: UIView] = [:]

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
            view.center = touch.location(in: self)
            view.backgroundColor = UIColor(named: "red")
            view.layer.cornerRadius = 40
            
            self.touchToRoundView[touch] = view
            self.addSubview(view)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            var view = self.touchToRoundView[touch]
            view?.center = touch.location(in: self)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            var view = self.touchToRoundView[touch]
            view?.removeFromSuperview()
            self.touchToRoundView.removeValue(forKey: touch)
        }
    }

}
