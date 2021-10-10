//
//  RootRouter.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 14.09.2021.
//

import UIKit


class DefaultLoginRouter {
    
    weak var viewController: LoginViewController!
    
    required init(viewController: LoginViewController) {
        self.viewController = viewController 
    }
    
    func navigate(to route: LoginRoute) {
        switch route {
        case .menu:
            let menuController = MenuViewController()
            viewController.navigationController?.pushViewController(menuController, animated: true)
        case .resetPassword:
            let registrationController = RegistrationViewController()
            viewController.navigationController?.pushViewController(registrationController, animated: true)
        }
    }
}

extension DefaultLoginRouter {
    enum LoginRoute: String {
        case menu
        case resetPassword
    }
}
