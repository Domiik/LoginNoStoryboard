//
//  AppRouter.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 21.09.2021.
//

import UIKit


class AppRouter {
    typealias Route = MenuViewController.LoginRoute
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
