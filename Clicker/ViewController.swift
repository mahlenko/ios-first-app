//
//  ViewController.swift
//  Clicker
//
//  Created by Sergey on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let counterPrefixText = "Значение счетчика"
    var countClicks: Int = 0
    
    @IBOutlet weak var clickCounterLabel: UILabel!
    @IBOutlet weak var clickerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configStorybord()
    }
    
    func configStorybord() {
        updateCounterLabel()
        clickerButton.setTitle("Тыкать тут", for: .normal)
    }
    
    func updateCounterLabel() {
        clickCounterLabel.text = "\(self.counterPrefixText): \(self.countClicks)"
    }
    @IBAction func touchDownClickerButton(_ sender: Any) {
        counterIncrements()
    }
    
    func counterIncrements() {
        self.countClicks += 1
        updateCounterLabel()
    }
}

