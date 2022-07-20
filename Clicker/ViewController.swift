//
//  ViewController.swift
//  Clicker
//
//  Created by Sergey on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: properties
    private let counterPrefixText = "Значение счетчика"
    private var countClicks: Int = 0
    
    // MARK: IBOutlets
    @IBOutlet weak var clickCounterLabel: UILabel!
    @IBOutlet weak var clickerButton: UIButton!
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configStorybord()
    }
    
    // MARK: Private methods
    // начальные настройки экрана
    private func configStorybord() {
        updateCounterLabel()
        clickerButton.setTitle("Тыкать тут", for: .normal)
    }
    
    // обновление значения в Label
    private func updateCounterLabel() {
        clickCounterLabel.text = "\(self.counterPrefixText): \(self.countClicks)"
    }
    
    // увеличение счетчика кликов
    private func counterIncrements() {
        self.countClicks += 1
        updateCounterLabel()
    }
    
    // MARK: IBActions
    // клик по кнопке
    @IBAction func touchDownClickerButton(_ sender: Any) {
        counterIncrements()
    }
}

