//
//  ViewController.swift
//  Delegate Protocol
//
//  Created by Sabbir on 2/3/20.
//  Copyright © 2020 Sabbir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func next(_ sender: Any) {
        
        let SecondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        SecondViewController.txtbackValueDelegate = self
        present(SecondViewController, animated: true, completion: nil)
        
    }
    
}

extension ViewController: txtbackDelegate {
    func txtbackValue(value: String) {
        self.txt.text = value
    }

}
