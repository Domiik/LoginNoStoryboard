//
//  MenuViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 10.09.2021.
//

import UIKit

class MenuViewController: UIViewController {
    
    var menuView: MenuView!
    var router: LoginRouter!
    var user: UserViewModel!
    
    enum LoginRoute: String {
        case home
        case resetPassword
        case loginView
    }
   
    override func loadView() {
        super.loadView()
        router = DefaultLoginRouter(viewController: self)
        let mainView = MenuView(frame: self.view.frame)
        self.menuView = mainView
        self.menuView.logoutAction = logoutPressed
        self.view.addSubview(menuView)
       
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.setHidesBackButton(true, animated:true)
        self.navigationItem.rightBarButtonItem = menuView.buttonLogout
    }
    
    func logoutPressed() {
        user.token = ""
        print(user.token)
        router.navigate(to: .loginView)
    }
    
    

}
