//
//  Model.swift
//  BullsEye
//
//  Created by Leon on 16/11/20.
//

import Foundation
import UIKit

class GameManager {
    static var sliderValue: Int = 0
    static var bullsEye: Int = 0
    static var currentScore: Int = 0
    static var pointsKey: String = "Points"
    
    let gameSlider = GameSlider()
    let gameScore = GameScore()
    
    var isGameStarted: Bool = false
    var gameMainTitle: UILabel! = nil

    
    //MARK: - Game Manager
    func onPressActionButton(_ slider: UISlider,_ startButton: UIButton,_ viewController: GameViewController,_ gameInforLabel: UILabel){
        isGameStarted ? onGameEnd(startButton, viewController) : onGameStart(startButton, viewController, slider,gameInforLabel)
    }
    
    func onGameEnd(_ startButton: UIButton,_ viewController: GameViewController){
        startButton.setImage(GameImages.GameScreen.playButton, for: .normal)
        showScoreModal(gameViewController: viewController)
        gameSlider.stopSlider()
        isGameStarted = false
    }
    
    func onGameStart(_ startButton: UIButton,_ viewController: GameViewController,_ slider: UISlider,_ gameInforLabel: UILabel){
        startButton.setImage(GameImages.GameScreen.pauseButton, for: .normal)
        gameSlider.startMovingSlider(gameSlider: slider)
        isGameStarted = true
        gameInforLabel.text = getNextBullsEye()
    }
    
    func getNextBullsEye()-> String{
        GameManager.bullsEye = Int.random(in: 1...100)
        return Strings.GameScreen.sortedValueLabel + "\(GameManager.bullsEye)%"
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
        score.text = "+ \(gameScore.getGameScore(GameManager.bullsEye, gameSlider.getCurrentSlideValue()))"
        bullsEye.text = "\(GameManager.bullsEye)%"
        position.text = "\(gameSlider.getCurrentSlideValue())%"
    }
}
