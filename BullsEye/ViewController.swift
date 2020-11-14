//
//  ViewController.swift
//  BullsEye
//
//  Created by Leon on 12/11/20.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(){
        
        let alert = UIAlertController(
            title: "Hello, World",
            message: "The slider value is: \(currentValue)",
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "Awesome",
            style: .default,
            handler: nil
        )
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider:UISlider){
        currentValue = Int(slider.value)
    }
    
}
