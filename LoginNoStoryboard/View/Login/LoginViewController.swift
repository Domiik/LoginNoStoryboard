//
//  ViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 09.09.2021.
//

import UIKit


class LoginViewController: UIViewController {
    

    lazy var router = LoginRouter(viewController: self)
    
    private lazy var loginView = LoginView()
    private lazy var userViewModel = UserViewModel()
    private lazy var loginViewModel = LoginViewModel()
    private var data: Bool = false
    
    override func loadView() {
        self.loginView.loginAction = loginPressed
        self.loginView.registrationAction = registrationTransitionButton
        self.loginView.showAlertWithData = showAlertWithData
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
        guard let login = self.loginView.loginTextField.text else {
            return
        }
        guard let password = self.loginView.passwordTextField.text else {
            return
        }

        if data {
            self.loginViewModel.signUser(email: login, password: password, completion: { [weak self] in
                self?.router.navigate(to: .menu)
            }, failure: { [weak self] (error) in
                self?.router.navigate(to: .resetPassword)
            })
        } else {
            if userViewModel.currentUser(login: login, password: password) {
                router.navigate(to: .menu)
            } else {
                router.navigate(to: .resetPassword)
            }
        }

    }
    
    func registrationTransitionButton() {
        self.router.navigate(to: .resetPassword)
    }
    
    func showAlertWithData() {
        alert(completion: { (succes) in
            switch succes {
            case .mock: self.data = false
                break
            case .firebase: self.data = true
                break
            }
            
        })
    }
    
    //переключение между данными mock and firebase
    //невидимая кнопка в правом вверхнем углу и при нажатии из любового экрана появляется  список выбор данных
    //loginviewmodel  сделать как протокол и подменивать данные
    // модель передавалсь в контроллер при инициализации подменивать при выборе
    // в протоколе будет метод signuser
    
}


//extension LoginViewController: LoginViewModelProtocol {
//    func signUser() -> Bool {
//
//    }
//}



