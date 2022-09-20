//
//  ViewController.swift
//  BrokenTrafficLoght
//
//  Created by Armen Madoyan on 20.09.2022.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var readyButton: UIButton!
    
    private var currentColor = CurrentColor.red
    
    override func viewWillLayoutSubviews() {
        redColorView.layer.cornerRadius = redColorView.frame.height / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.height / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.height / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readyButton.layer.cornerRadius = 15
        
    }
    
    @IBAction func readyButtonTapped() {
        
        if readyButton.currentTitle == "What is this color?" {
            readyButton.setTitle("It's red", for: .normal)
        } else if readyButton.currentTitle == "It's red" {
            readyButton.setTitle("It's yellow", for: .normal)
        } else if readyButton.currentTitle == "It's yellow" {
            readyButton.setTitle("It's green", for: .normal)
        } else if readyButton.currentTitle == "It's green" {
            readyButton.setTitle("It's red", for: .normal)
        }
        
        switch currentColor {
        case .red:
            redColorView.alpha = 1
            redColorView.backgroundColor = UIColor.systemRed

            yellowColorView.alpha = 1
            yellowColorView.backgroundColor = UIColor.black
            greenColorView.alpha = 1
            greenColorView.backgroundColor = UIColor.black
            view.backgroundColor = UIColor.systemRed
            currentColor = .yellow
        case .yellow:
            redColorView.backgroundColor = UIColor.black
            yellowColorView.alpha = 1
            yellowColorView.backgroundColor = UIColor.systemYellow
            currentColor = .green
            view.backgroundColor = UIColor.systemYellow
        case .green:
            yellowColorView.backgroundColor = UIColor.black
            greenColorView.backgroundColor = UIColor.systemGreen
            currentColor = .red
            view.backgroundColor = UIColor.systemGreen
        }
    }
}

extension ViewController {
    enum CurrentColor {
        case red
        case yellow
        case green
    }
}
