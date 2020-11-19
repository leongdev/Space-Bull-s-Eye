//
//  MainCoordinator.swift
//  BullsEye
//
//  Created by Leon on 18/11/20.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator{
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.setNavigationBarHidden(true, animated:true)
    }
    
    func start(){
        let vc = HomeViewController.instantiate(from: UIStoryboard.Name.homeScreen)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goHomeScreen(){
        let vc = HomeViewController.instantiate(from: UIStoryboard.Name.homeScreen)
        vc.coordinator = self
        navigationController.popViewController( animated: true)
    }
    
    func goGameScreen(){
        let vc = GameViewController.instantiate(from: UIStoryboard.Name.gameScreen)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
