//
//  ViewController.swift
//  BullsEye
//
//  Created by Leon on 12/11/20.
//

//Remember to credit the artist on README
//https://br.freepik.com/vectorpouch

import UIKit

class GameViewController: UIViewController, Storyboarded {
    
    static func instantiate() -> Self{ return GameViewController() as! Self}
    static var pointLavel:UILabel? = nil
    static var sortTitleLabel:UILabel? = nil
    
    var gameManager = GameManager()
    weak var coordinator: MainCoordinator?
    

    
    override func viewDidLoad() {
       // setSliderValue( Int.random(in: 1...100))
        super.viewDidLoad()
        GameViewController.pointLavel = pointsLabel
        initializeLabel()
        // Do any additional setup after loading the view.
    }
    
    func initializeLabel(){
        GameViewController.sortTitleLabel = sortLabel
        sortLabel.text = Strings.GameScreen.startGameInfoLabel
        let defaults = UserDefaults.standard
        if let stringOne = defaults.string(forKey: GameManager.pointsKey) {
            pointsLabel.text = stringOne
        }
    }

    @IBOutlet weak var mainSlider: UISlider!{
    
        didSet{
            // Styling the progress Bar
            let thumbImageNormal = UIImage(named: "Rocket")!
            mainSlider.setThumbImage(thumbImageNormal, for: .normal)
            mainSlider.setMinimumTrackImage(UIImage(named: "Slider_Minimum"), for: .normal)
            mainSlider.setMaximumTrackImage(UIImage(named: "Slider_Maximum"), for: .normal)
        }
    }
    
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var sortLabel: UILabel!
    
    @IBAction func onPressHome(){
        coordinator?.goHomeScreen()
    }
    
    @IBAction func onPressAction(){
        gameManager.onPressActionButton(mainSlider, actionButton, self, sortLabel)
    }
}
