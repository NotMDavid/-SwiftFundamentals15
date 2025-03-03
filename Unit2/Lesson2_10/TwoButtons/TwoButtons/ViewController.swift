//
//  ViewController.swift
//  TwoButtons
//
//  Created by spring2025 on 3/2/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textfield: UITextField!
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setTextTap(_ sender: Any) {
        label.text = textfield.text
    }
    
    @IBAction func clearTextTap(_ sender: Any) {
        textfield.text = ""
        label.text = ""
    }
}

