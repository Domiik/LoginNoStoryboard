//
//  Router.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 22.09.2021.
//

import UIKit

protocol Router {
    typealias Route = SceneDelegate.Router
    
    var viewController: SceneDelegate! { get }
    init(viewController: SceneDelegate)
    
    func navigate(to route: Route)
}

class DefaultRouter: Router {
    weak var viewController: SceneDelegate!

    required init(viewController: SceneDelegate) {
        self.viewController = viewController
    }
    
    func navigate(to route: Route) {
        guard let route = SceneDelegate.Router(rawValue: route.rawValue)  else {
        return
        }
        switch route {
        case .login:
            let loginController = LoginViewController()
            viewController.window?.rootViewController = UINavigationController(rootViewController: loginController)
        case .menu:
            let menuController = MenuViewController()
            viewController.window?.rootViewController = UINavigationController(rootViewController: menuController)
        }
    }
    
}
