//
//  Model.swift
//  BullsEye
//
//  Created by Leon on 16/11/20.
//

import Foundation
import UIKit

class GameManager {
    
    var timer: Timer!
    var sliderValue: Int = 0
    var timeSlider: UISlider! = nil
    
    //MARK: - Game Slider
    func fireTime(timeSlider slider: UISlider){
        timeSlider = slider
        timer = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(addCounterValue), userInfo: nil, repeats: true)
    }
    
    @objc func addCounterValue(){
        sliderValue += 1
        
        if(sliderValue >= 100){
            sliderValue = 0
        }
        
        timeSlider.value = Float(sliderValue)
        
        print(sliderValue)
    }
    
    func stopTimer(){
        timer.invalidate()
    }
    
    //MARK: - Score Modal
    func showScoreModal(gameViewController viewController: GameViewController){
        let storyboard = UIStoryboard(name: "ScoreModal", bundle: nil)
        let myAlert = storyboard.instantiateViewController(withIdentifier: "ScoreModal")
        myAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        myAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        viewController.present(myAlert, animated: true, completion: nil)
    }
    
    func setupModalVariables(playerScore score:UILabel, gameBullsEye bullsEye:UILabel, playerPosition position: UILabel){
        score.text = "+ \(100)"
        bullsEye.text = "\(91)%"
        position.text = "\(80)%"
    }
}
