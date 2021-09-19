//
//  RootRouter.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 14.09.2021.
//

import UIKit

protocol LoginRouter {
    typealias Route = LoginViewController.LoginRoute
    
    var viewController: UIViewController! { get }
    init(viewController: UIViewController)
    
    func navigate(to route: Route)
}

class DefaultLoginRouter: LoginRouter {
    weak var viewController: UIViewController!

    
    required init(viewController: UIViewController) {
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
            registrationController.modalPresentationStyle = .fullScreen
            viewController.present(registrationController, animated: true, completion: nil)
        case .loginView:
            let loginController = LoginViewController()
            viewController.navigationController?.pushViewController(loginController, animated: true)
        }
    }
    
}

