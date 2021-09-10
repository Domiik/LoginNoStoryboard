//
//  RegistrationViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 10.09.2021.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    var registrationView: RegistrationView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        let mainView = RegistrationView(frame: self.view.frame)
        self.registrationView = mainView
        self.view.addSubview(mainView)
    }
}
