//
//  ViewController.swift
//  Light_DavidR
//
//  Created by spring2025 on 2/8/25.
//

import UIKit

var lightOn = true
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightUI()
        // Do any additional setup after loading the view.
    }

    fileprivate func lightUI() {
        if lightOn {
            view.backgroundColor = .black
            // lightButton.setTitle("On", for: .normal)
        }
        else {
            view.backgroundColor = .white
            // lightButton.setTitle("Off", for: .normal)
        }
    }
    func updateUI() {
        view .backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        lightUI()
    }
}

