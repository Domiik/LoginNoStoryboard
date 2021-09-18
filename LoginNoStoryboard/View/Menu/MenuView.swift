//
//  MenuView.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 10.09.2021.
//

import UIKit

class MenuView: UIView {
    
    var tableView: UITableView!
    var buttonLogout: UIBarButtonItem!
    var logoutAction: (() -> Void)?
    
    var menuView: MenuViewController!
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        tableView = UITableView(frame: .zero)
        buttonLogout = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(handleLogout))
        
        self.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    
    @objc func handleLogout() {
        logoutAction?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
