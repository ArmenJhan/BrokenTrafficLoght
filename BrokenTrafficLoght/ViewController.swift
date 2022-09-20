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
    
 var tapped = true
    
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
        
        if readyButton.currentTitle == "Start" {
            readyButton.setTitle("Ready!", for: .normal)
        } else if readyButton.currentTitle == "Ready!" {
            readyButton.setTitle("Set!!", for: .normal)
        } else if readyButton.currentTitle == "Set!!" {
            readyButton.setTitle("GO!!!", for: .normal)
        } else if readyButton.currentTitle == "GO!!!" {
            readyButton.setTitle("Ready!", for: .normal)
        }
        
        if tapped {
            tapped = false
            redColorView.alpha = 1
            view.backgroundColor = UIColor.systemRed
        } else if  redColorView.alpha == 1{
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
            view.backgroundColor = UIColor.systemYellow
        } else if yellowColorView.alpha == 1 {
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 1
            view.backgroundColor = UIColor.systemGreen
        } else if greenColorView.alpha == 1 {
            greenColorView.alpha = 0.3
            redColorView.alpha = 1
            view.backgroundColor = UIColor.systemRed
        }
    }
}
