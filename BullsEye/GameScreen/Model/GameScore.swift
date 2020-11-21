//
//  GameScore.swift
//  BullsEye
//
//  Created by Leon on 21/11/20.
//

import Foundation
struct GameScore {
    
    let maxiumScore: Int = 100
    
    func getGameScore(_ bullsEye: Int,_ localValue: Int) -> Int{
        var points: Int = 0
        
        if(bullsEye > localValue){
            points = maxiumScore - ( bullsEye - localValue )
        }else if(bullsEye < localValue){
            points = maxiumScore - (localValue - bullsEye)
        }else{
            points = maxiumScore
        }
        saveTotalPoints(points)
        return points
    }
    
    func saveTotalPoints(_ gamePoints: Int){
        let defaults = UserDefaults.standard
        var localPoints: Int = 0
        
        if let stringOne = defaults.string(forKey: GameManager.pointsKey) {
            localPoints = Int(stringOne)!
        }
        defaults.set(String(localPoints + gamePoints), forKey: GameManager.pointsKey)
        GameViewController.pointLavel?.text = String(localPoints + gamePoints)
    }
}
