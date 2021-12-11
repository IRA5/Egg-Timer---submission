//
//  ViewController.swift
//  Egg Timer
//
//  Created by Irtaza Ali on 10/24/21.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    var eggTimes = ["Hard" : 10, "Medium" : 7, "Soft" : 4]
    
    var startTime = 0
    var totalTime = 0
    
    var timer = Timer()
    
    @IBAction func clickMe(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        print(hardness)
        outputLabel.text = hardness
        
        totalTime = eggTimes[hardness]! //10 |7 |4
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector (updateCounter), userInfo: nil, repeats: true)
}
    @objc func updateCounter() {

        if startTime < totalTime {
            
            startTime += 1
            
            progressView.progress = Float(startTime)/Float (totalTime)
        }
        
        else {
            outputLabel.text = "Eggs are ready!"
            
            timer.invalidate()
            }
}


}
