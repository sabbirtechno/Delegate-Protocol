//
//  SecondViewController.swift
//  Delegate Protocol
//
//  Created by Sabbir on 2/3/20.
//  Copyright © 2020 Sabbir. All rights reserved.
//

import UIKit
protocol txtbackDelegate {
    func txtbackValue(value: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var txtback: UITextField!
    
    var txtbackValueDelegate: txtbackDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
      
        txtbackValueDelegate.txtbackValue(value: txtback.text!)
        dismiss(animated: true, completion: nil)
        
        
    }
    

}
