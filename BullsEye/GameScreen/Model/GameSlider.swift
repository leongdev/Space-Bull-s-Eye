//
//  MoveGameSlider.swift
//  BullsEye
//
//  Created by Leon on 21/11/20.
//

import Foundation
import UIKit

class GameSlider {
    
    let sliderSpeed: Double = 0.005
    var sliderValue: Int = 0
    
    var moveDirection: Bool = false
    var timer: Timer!
    var gameSlider: UISlider! = nil
    
    func startMovingSlider(gameSlider slider: UISlider){
        gameSlider = slider
        timer = Timer.scheduledTimer(timeInterval: sliderSpeed, target: self, selector: #selector(changeSliderPosition), userInfo: nil, repeats: true)
    }
    
    func stopSlider(){
        timer.invalidate()
    }
    
    @objc func changeSliderPosition(){
        moveDirection ? moveFoward(): moveBackwards()
        gameSlider.value = Float(sliderValue)
    }
    
    func changeDirection(){
        moveDirection = !moveDirection
    }
    
    func moveFoward() {
        sliderValue += 1
        if(sliderValue >= 100){
            changeDirection()
        }
    }
    
    func moveBackwards(){
        sliderValue -= 1
        if(sliderValue <= 0){
            changeDirection()
        }
    }
    
}
