//
//  AppRouter.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 21.09.2021.
//

import UIKit

protocol AppRouter {
    typealias Route = MenuViewController.LoginRoute
    
    var viewController: MenuViewController! { get }
    init(viewController: MenuViewController)
    
    func navigate(to route: Route)
}

class DefaultAppRouter: AppRouter {
    weak var viewController: MenuViewController!

    required init(viewController: MenuViewController) {
        self.viewController = viewController
    }
    
    func navigate(to route: Route) {
        guard let route = MenuViewController.LoginRoute(rawValue: route.rawValue)  else {
        return
        }
        switch route {
        case .loginView:
            let loginController = LoginViewController()
            viewController.navigationController?.pushViewController(loginController, animated: true)
        }
    }
    
}
