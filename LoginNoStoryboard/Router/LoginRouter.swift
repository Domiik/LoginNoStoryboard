//
//  RootRouter.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 14.09.2021.
//

import UIKit

protocol LoginRouter {
    typealias Route = LoginViewController.LoginRoute
    
    var viewController: LoginViewController! { get }
    init(viewController: LoginViewController)
    
    func navigate(to route: Route)
}

class DefaultLoginRouter: LoginRouter {
    
    
    weak var viewController: LoginViewController!
    
    required init(viewController: LoginViewController) {
        self.viewController = viewController
    }
    
    func navigate(to route: Route) {
        guard let route = LoginViewController.LoginRoute(rawValue: route.rawValue)  else {
        return
        }
        switch route {
        case .home:
            let loginController = MenuViewController()
            viewController.present(loginController, animated: true, completion: nil)
        case .resetPassword:
            let registrationController = RegistrationViewController()
            viewController.present(registrationController, animated: true, completion: nil)
        }
    }
    
}

