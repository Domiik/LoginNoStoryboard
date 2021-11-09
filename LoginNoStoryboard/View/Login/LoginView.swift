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
    var registrationAction: (() -> Void)?
    var showAlertWithData: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setup()
    }
    
    func setup() {
        addSubview(stackView)
        addSubview(buttonChange)
        addConstrain()
    }
    
    func addConstrain() {
        buttonChange.snp.makeConstraints { maker in
            maker.right.equalToSuperview().inset(20)
            maker.top.equalToSuperview().inset(40)
            maker.height.equalTo(50)
            maker.width.equalTo(50)
        }
        
        stackView.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(50)
            maker.right.equalToSuperview().inset(50)
            maker.top.equalToSuperview().inset(200)
            maker.bottom.equalToSuperview().inset(200)
        }
    }
    
    lazy var loginText: UILabel = {
        let text = UILabel()
        text.text = "Login"
        text.textColor = .black
        return text
    }()
    
    lazy var loginTextField: UITextField = {
        let login = UITextField()
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.gray]))
        login.attributedPlaceholder = placeholder
        login.backgroundColor = .blue
        login.textColor = .white
        login.layer.cornerRadius = 5
        return login
    }()
    
    lazy var passwordTextField: UITextField = {
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
    
    lazy var buttonEnter: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonRegistration: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("Registration", for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(handleRegistration), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonChange: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("", for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(handleAlertWithData), for: .touchUpInside)
        return button
    }()
    
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [loginText,
                                                   loginTextField,
                                                   passwordTextField,
                                                   buttonEnter,
                                                   buttonRegistration])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 10
        
        return stack
    }()
    
    @objc func handleLogin() {
        loginAction?()
    }
    
    @objc func handleRegistration() {
        registrationAction?()
    }
    
    @objc func handleAlertWithData() {
        showAlertWithData?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



