//
//  RootRouter.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 14.09.2021.
//

import UIKit


class DefaultLoginRouter {
    typealias Route = LoginViewController.LoginRoute
    weak var viewController: LoginViewController!
    
    required init(viewController: LoginViewController) {
        self.viewController = viewController 
    }
    
    func navigate(to route: Route) {
        guard let route = LoginViewController.LoginRoute(rawValue: route.rawValue)  else {
            return
        }
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

