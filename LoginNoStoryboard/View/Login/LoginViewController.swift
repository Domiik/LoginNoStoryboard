//
//  ViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 09.09.2021.
//

import UIKit


class LoginViewController: UIViewController {
    
    enum LoginRoute: String {
        case menu
        case resetPassword
        case loginView
    }
    var router: LoginRouter!
    
    var loginView: LoginView!
    var userViewModel: UserViewModel!
    
    override func loadView() {
        super.loadView()
        router = DefaultLoginRouter(viewController: self)
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.loginView.loginAction = loginPressed
        self.view.addSubview(loginView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        if userViewModel.currentUser(){
//            router.navigate(to: .menu)
//        }
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
        if login == "Admin" && password == "Admin" {
            userViewModel.token = "yes"
            print(userViewModel.token)
            router.navigate(to: .menu)
        } else {
            router.navigate(to: .resetPassword)
        }
        
    }
    
    
    
    
    
}

