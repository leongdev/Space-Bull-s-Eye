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
    
    var gameManager = GameManager()
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
       // setSliderValue( Int.random(in: 1...100))
        super.viewDidLoad()
        gameManager.fireTime(timeSlider: mainSlider)
        // Do any additional setup after loading the view.
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
    

    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var sortLabel: UILabel!
    
    @IBAction func onPressHome(){
        coordinator?.goHomeScreen()
    }
    
    @IBAction func onPressPause(){
        gameManager.stopTimer()
        gameManager.showScoreModal(gameViewController: self)
    }
}
