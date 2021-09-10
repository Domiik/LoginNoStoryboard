//
//  ViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 09.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var loginView: LoginView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    func setupView(){
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.loginView.loginAction = loginPressed
        self.view.addSubview(loginView)
    }
    
    
    func loginPressed() {
        guard let login = loginView.loginTextField.text else {
            return
        }
        guard let password = loginView.passwordTextField.text else {
            return
        }
        if login == "Admin" && password == "Admin" {
            let loginController = MenuViewController()
            present(loginController, animated: true, completion: nil)
        } else {
            let registrationController = RegistrationViewController()
            present(registrationController, animated: true, completion: nil)
        }
       
    }
   
    
    


}

