//
//  MenuViewController.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 10.09.2021.
//

import UIKit

class MenuViewController: UIViewController {
    
    var menuView: MenuView!
   
    override func loadView() {
        super.loadView()
        let mainView = MenuView(frame: self.view.frame)
        self.menuView = mainView
        self.view.addSubview(menuView)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

}
