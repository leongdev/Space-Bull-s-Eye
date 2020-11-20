//
//  HomeViewController.swift
//  BullsEye
//
//  Created by Leon on 17/11/20.
//

import UIKit

class HomeViewController: UIViewController, Storyboarded {
    var onbjectsAnimator = ObjectsAnimator()
    static func instantiate() -> Self{ return HomeViewController() as! Self}

    
    weak var coordinator: MainCoordinator? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onbjectsAnimator.changeConstraintPositions(
            layoutView: self.view,
            imageOneHorizontalConstraint: planetOneHorizontalConstraint,
            imageOneVerticalConstraint: planetOneVerticalConstraint,
            imageTwoHorizontalConstraint: planetTwoHorizontalConstraint,
            imageTwoVerticalConstraint: planetTwoVerticalConstraint)
    }
    
    @IBOutlet var planetTwoHorizontalConstraint: NSLayoutConstraint!
    @IBOutlet var planetTwoVerticalConstraint: NSLayoutConstraint!
    
    @IBOutlet var planetOneHorizontalConstraint: NSLayoutConstraint!
    @IBOutlet var planetOneVerticalConstraint: NSLayoutConstraint!
    
    
    @IBAction func onPressStart(){
        coordinator?.goGameScreen()
    }

}
