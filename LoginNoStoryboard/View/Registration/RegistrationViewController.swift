//
//  RegistrationViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 10.09.2021.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    var registrationView: RegistrationView!
    
    override func loadView() {
        super.loadView()
        let mainView = RegistrationView(frame: self.view.frame)
        self.registrationView = mainView
        self.view.addSubview(mainView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
}
