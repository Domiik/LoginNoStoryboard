//
//  LoginView.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 10.09.2021.
//

import UIKit
import SnapKit

class LoginView: UIView {
    
    var loginAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setup()
    }
    
    func setup() {
        addSubview(stackView)
        stackView.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(50)
            maker.right.equalToSuperview().inset(50)
            maker.top.equalToSuperview().inset(200)
            maker.bottom.equalToSuperview().inset(200)
        }
    }
    
    let loginTextField: UITextField = {
        let login = UITextField()
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.gray]))
        login.attributedPlaceholder = placeholder
        login.backgroundColor = .blue
        login.textColor = .white
        login.layer.cornerRadius = 5
        return login
    }()
    
    let passwordTextField: UITextField = {
        let password = UITextField()
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.gray]))
        password.attributedPlaceholder = placeholder
        password.backgroundColor = .blue
        password.textColor = .white
        password.layer.cornerRadius = 5
        password.isSecureTextEntry = true
        return password
    }()
    
    let buttonEnter: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    
    lazy var stackView: UIStackView = {
         let stack = UIStackView(arrangedSubviews: [loginTextField,
                                                       passwordTextField,
                                                       buttonEnter])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 10
        
        return stack
    }()
    
    @objc func handleLogin() {
        loginAction?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



