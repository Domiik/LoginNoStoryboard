//
//  MenuViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 10.09.2021.
//

import UIKit

class MenuViewController: UIViewController {
    
    var menuView: MenuView!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        let mainView = MenuView(frame: self.view.frame)
        self.menuView = mainView
        self.view.addSubview(menuView)
    }

}
