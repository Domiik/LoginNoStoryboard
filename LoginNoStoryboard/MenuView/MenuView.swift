//
//  MenuView.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 10.09.2021.
//

import UIKit

class MenuView: UIView {
    
    var tableView: UITableView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        tableView = UITableView(frame: .zero)
        self.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
