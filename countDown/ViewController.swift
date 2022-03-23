//
//  ViewController.swift
//  countDown
//
//  Created by Tuba Nur YAŞA on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var timer = Timer()
    var remainingTime = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        remainingTime = 15
        label.text = "Time : \(remainingTime)"
    }

    
    @IBAction func startButtonClicked(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunc() {
        label.text = "Time : \(remainingTime)"
        remainingTime -= 1
    }
}

