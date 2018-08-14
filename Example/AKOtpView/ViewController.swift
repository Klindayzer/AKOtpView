//
//  ViewController.swift
//  AKOtpView
//
//  Created by adhamalkhateeb on 08/14/2018.
//  Copyright (c) 2018 adhamalkhateeb. All rights reserved.
//

import UIKit
import AKOtpView

class ViewController: UIViewController {
    
    @IBOutlet weak var otpView: AKOtpView!
    let correctOtp = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        otpView.setupView(withFont: UIFont.systemFont(ofSize: 20)) { (code) in
            
            if code != self.correctOtp {
                self.otpView.isError = true
            }
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        otpView.openKeyboard()
    }

}

