//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by spring2025 on 2/2/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeTitle(_ sender: UIButton) {
        mainLabel.text = "This app rocks"
    }
}

