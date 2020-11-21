//
//  ScoreModalController.swift
//  BullsEye
//
//  Created by Leon on 20/11/20.
//

import UIKit

class ScoreModalController: UIViewController {
    var gameManager = GameManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        gameManager.setupModalVariables(
            playerScore: scoreLabel,
            gameBullsEye: bullsEyeLabel,
            playerPosition: playerPositionLabel)
    }
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var bullsEyeLabel: UILabel!
    @IBOutlet weak var playerPositionLabel: UILabel!
    
    @IBAction func onCloseModal(){
        GameViewController.sortTitleLabel?.text = Strings.GameScreen.startGameInfoLabel
        self.dismiss(animated: true, completion: nil)
    }
    
}
