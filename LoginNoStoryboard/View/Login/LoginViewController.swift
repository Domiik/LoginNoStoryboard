//
//  ViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 09.09.2021.
//

import UIKit


class LoginViewController: UIViewController {
    
    lazy var router = DefaultLoginRouter(viewController: self)
    
    lazy var loginView = LoginView()
    lazy var userViewModel = UserViewModel()
    lazy var loginViewModel = LoginViewModel()
    
    override func loadView() {
        self.loginView.loginAction = loginPressed
        self.view = loginView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    
    func loginPressed() {
        guard let login = loginView.loginTextField.text else {
            return
        }
        guard let password = loginView.passwordTextField.text else {
            return
        }
//        if userViewModel.currentUser(login: login, password: password) {
//            router.navigate(to: .menu)
//        } else {
//            router.navigate(to: .resetPassword)
//        }
        
        self.loginViewModel.signUser(email: login, password: password, completion: {
            self.router.navigate(to: .menu)
        }, failure: { (error) in
            self.router.navigate(to: .resetPassword)
        })
        
    }
    
}

