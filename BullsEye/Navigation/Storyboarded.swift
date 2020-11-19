//
//  Storyboard.swift
//  BullsEye
//
//  Created by Leon on 18/11/20.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate()-> Self
}

extension Storyboarded where Self: UIViewController{
    static func instantiate(from storyboardName: UIStoryboard.Name) -> Self{
        let id = String(describing: self)
        let storyboard = UIStoryboard(name:storyboardName.rawValue, bundle: Bundle.main)

        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}

extension UIStoryboard{
    enum Name: String{
        case homeScreen = "HomeView"
        case gameScreen = "GameView"
    }
}
