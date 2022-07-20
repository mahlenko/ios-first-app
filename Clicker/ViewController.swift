//
//  ViewController.swift
//  Clicker
//
//  Created by Sergey on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - properties
    
    private let counterPrefixText = "Значение счетчика"
    private var countClicks: Int = 0
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var clickCounterLabel: UILabel!
    @IBOutlet weak var clickerButton: UIButton!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configStoryboard()
    }
    
    // MARK: - Private methods
    
    private func configStoryboard() {
        updateCounterLabel()
        clickerButton.setTitle("Тыкать тут", for: .normal)
    }
    
    private func updateCounterLabel() {
        clickCounterLabel.text = "\(self.counterPrefixText): \(self.countClicks)"
    }
    
    private func counterIncrements() {
        self.countClicks += 1
        updateCounterLabel()
    }
    
    // MARK: - IBActions
    
    @IBAction func touchDownClickerButton(_ sender: Any) {
        counterIncrements()
    }
}
