//
//  RegistrationRouter.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 19.10.2021.
//

import Foundation


class RegistrationRouter {
    
    weak var viewController: RegistrationViewController!
    
    required init(viewController: RegistrationViewController) {
        self.viewController = viewController
    }
    
    func navigate(to route: RegistrationRoute) {
        switch route {
        case .login:
            let loginController = LoginViewController()
            viewController.navigationController?.pushViewController(loginController, animated: true)
        }
    }
}

extension RegistrationRouter {
    enum RegistrationRoute: String {
        case login
    }
}
