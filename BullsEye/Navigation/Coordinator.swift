//
//  Coordinator.swift
//  BullsEye
//
//  Created by Leon on 18/11/20.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator]{get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}
 
