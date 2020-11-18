//
//  HomeViewController.swift
//  BullsEye
//
//  Created by Leon on 17/11/20.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onPressNext(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "game_VC") as! GameViewController
        present(vc, animated: true)
    }

}
