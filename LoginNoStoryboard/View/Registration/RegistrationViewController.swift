//
//  RegistrationViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 10.09.2021.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    private lazy var registrationViewModel = RegistrationViewModel()
    lazy var router = RegistrationRouter(viewController: self)
    
    private lazy var registrationView = RegistrationView()
   
    override func loadView() {
        self.registrationView.registrationAction = registrationUser
        self.view = registrationView
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
        //navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func registrationUser() {
        guard let login = self.registrationView.loginTextField.text else {
            return
        }
        guard let password = self.registrationView.passwordTextField.text else {
            return
        }
        self.registrationViewModel.createUser(email: login, password: password) { [weak self] (success) in
            var message: String = ""
            if (success) {
                message = "Success register"
                
                self?.router.navigate(to: .login)
            } else {
                message = "Error register"
            }
            let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self?.present(alertController, animated: true, completion: nil)
        }
    }
}
