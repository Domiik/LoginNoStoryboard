//
//  AppRouter.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 21.09.2021.
//

import UIKit


class AppRouter {
    weak var viewController: MenuViewController!

    required init(viewController: MenuViewController) {
        self.viewController = viewController
    }
    
    func navigate(to route: AppRoute) {
        switch route {
        case .loginView:
            let loginController = LoginViewController()
            viewController.navigationController?.pushViewController(loginController, animated: true)
        }
    }
}

extension AppRouter {
    enum AppRoute: String {
        case loginView
    }
}
