//
//  ViewController.swift
//  BullsEye
//
//  Created by Leon on 12/11/20.
//

//Remember to credit the artist on README
//https://br.freepik.com/vectorpouch

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    
    override func viewDidLoad() {
        setSliderValue( Int.random(in: 1...100))
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var mainSlider: UISlider!
    
    @IBAction func showAlert(){
        
        let alert = UIAlertController(
            title: "Hello, World",
            message: "The slider value is: \(currentValue)",
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "ok",
            style: .default,
            handler: nil
        )
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider:UISlider){
        currentValue = Int(slider.value)
    }
    
    func setSliderValue(_ value: Int){
        currentValue = value
        mainSlider.setValue(Float(value), animated: true)
    }
    
}
