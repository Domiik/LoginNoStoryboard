//
//  Router.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 22.09.2021.
//

import UIKit

class DefaultRouter {
    typealias Route = SceneDelegate.Router
    weak var sceneViewController: UIWindow!
    
    required init(viewController: UIWindow) {
        self.sceneViewController = viewController.window
    }
    
    func start() {
        if (UserDefaults.standard.value(forKey: "Login") != nil){
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
            //здесь ошибка функционала
            sceneViewController.rootViewController = UINavigationController(rootViewController: loginController)
            //sceneViewController.rootViewController = UINavigationController(rootViewController: loginController)
        case .menu:
            let menuController = MenuViewController()
            sceneViewController.window?.rootViewController = UINavigationController(rootViewController: menuController)
        }
    }
}
