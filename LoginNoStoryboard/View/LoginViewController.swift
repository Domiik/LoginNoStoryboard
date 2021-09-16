//
//  ViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 09.09.2021.
//

import UIKit


class LoginViewController: UIViewController {
    
    enum LoginRoute: String {
        case home
        case resetPassword
    }
    var router: LoginRouter!
    
    var loginView: LoginView!
    
    override func loadView() {
        super.loadView()
        router = DefaultLoginRouter(viewController: self)
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.loginView.loginAction = loginPressed
        self.view.addSubview(loginView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view
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
        if login == "A" && password == "A" {
            
            router.navigate(to: .resetPassword)
        } else {
            
            router.navigate(to: .home)
        }
        
    }
    
    
    
    
    
}

