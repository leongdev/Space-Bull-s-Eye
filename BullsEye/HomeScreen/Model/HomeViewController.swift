//
//  HomeViewController.swift
//  BullsEye
//
//  Created by Leon on 17/11/20.
//

import UIKit

class HomeViewController: UIViewController, Storyboarded {

    static func instantiate() -> Self{ return HomeViewController() as! Self}
    
    weak var coordinator: MainCoordinator? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onPressStart(){
        print("GAME")
        coordinator?.goGameScreen()
    }

}
