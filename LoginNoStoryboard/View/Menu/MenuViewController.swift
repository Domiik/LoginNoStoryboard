//
//  MenuViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 10.09.2021.
//

import UIKit

class MenuViewController: UIViewController {
    
    var menuView: MenuView!
    var router: AppRouter!
    var userViewModel: UserViewModel!
    var user: User?
    
    enum LoginRoute: String {
        case loginView
    }
   
    override func loadView() {
        super.loadView()
        router = AppRouter(viewController: self)
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
        UserDefaults.standard.removeObject(forKey: "Login")
        router.navigate(to: .loginView)
    }
    
    

}
