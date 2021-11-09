//
//  Router.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 22.09.2021.
//

import UIKit

class DefaultRouter {
    unowned var window: UIWindow
    
    required init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        if (UserDefaultSetting.user != nil){
            navigate(to: .menu)
        } else {
            navigate(to: .login)
        }
    }
    
    func navigate(to route: Route) {
        guard let route = SceneDelegate.Router(rawValue: route.rawValue)  else {
            return
        }
        switch route {
        case .login:
            let loginController = LoginViewController()
            window.rootViewController = UINavigationController(rootViewController: loginController)
        case .menu:
            let menuController = MenuViewController()
            window.window?.rootViewController = UINavigationController(rootViewController: menuController)
        }
    }
}

extension DefaultRouter {
    enum Route: String {
        case login
        case menu
    }
}
