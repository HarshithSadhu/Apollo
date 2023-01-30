//
//  SecondViewController.swift
//  Apollo
//
//  Created by Harshith Sadhu on 1/25/23.
//

import UIKit
import MagicTimer

class SecondViewController: UIViewController {

    let timeModes = [1500, 300]
    var timesClicked = 1
    @IBOutlet weak var timer: MagicTimerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        timer.defaultValue = 1500
        timer.mode = MGCountMode.countDown(fromSeconds: 1500)
        
        
      
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startBtn(_ sender: Any) {
        timer.startCounting()
    }
    
    @IBAction func nextLvlBtn(_ sender: Any) {
        
        timer.stopCounting()
        let newTime = Int(timeModes[timesClicked%2])
        
        timer.defaultValue = newTime
        
        timer.mode = MGCountMode.countDown(fromSeconds: Double(newTime))
        
        timesClicked = timesClicked + 1
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
