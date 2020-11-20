//
//  HomeObjectsAnimator.swift
//  BullsEye
//
//  Created by Leon on 19/11/20.
//  This is all file is an implementation of the UIKit Animation API

import Foundation
import UIKit


struct ObjectsAnimator {
   
    func changeConstraintPositions(
        layoutView view: UIView,
        imageOneHorizontalConstraint imgOneHorizontal: NSLayoutConstraint,
        imageOneVerticalConstraint imgOneVertical: NSLayoutConstraint,
        imageTwoHorizontalConstraint imgTwoHorizontal: NSLayoutConstraint,
        imageTwoVerticalConstraint imgTwoVertical: NSLayoutConstraint
        ){
        
        imgOneVertical.constant = 200
        imgOneHorizontal.constant = -300
        imgTwoVertical.constant = -200
        imgTwoHorizontal.constant = 300
        
        UIView.animate(
            withDuration: 1.5,
            delay: 0.0,
            options: .curveEaseOut,
            animations: {
                view.layoutIfNeeded()
            },
            completion: nil)
    }
}
