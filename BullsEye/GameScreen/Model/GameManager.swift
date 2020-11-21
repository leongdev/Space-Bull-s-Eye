//
//  Model.swift
//  BullsEye
//
//  Created by Leon on 16/11/20.
//

import Foundation
import UIKit

class GameManager {
    let gameSlider = GameSlider()
    var isGameStarted: Bool = false
    
    //MARK: - Game Manager
    func onPressActionButton(_ slider: UISlider,_ startButton: UIButton,_ viewController: GameViewController){
        
        if(isGameStarted){
            startButton.setImage(GameImages.GameScreen.playButton, for: .normal)
            showScoreModal(gameViewController: viewController)
            gameSlider.stopSlider()
            isGameStarted = false
        }else{
            startButton.setImage(GameImages.GameScreen.pauseButton, for: .normal)
            gameSlider.startMovingSlider(gameSlider: slider)
            isGameStarted = true
        }
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
