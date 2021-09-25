//
//  UserViewModel.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 18.09.2021.
//

import Foundation

enum LoginViewAction {
    case submit(login: String, password: String)
}

class UserViewModel {
    
    var user: User?
   
    public init(user: User?) {
        self.user = user
    }
    
    public var token: String? {
        get { return user?.token }
        set { guard let newValue = user?.token else { return } }
    }
    
    func currentUser(login: String, password: String) -> Bool{
        let current = LoginViewAction.submit(login: login, password: password)
        switch current {
        case .submit(login: "Admin", password: "Admin"):
            UserDefaults.standard.set(true, forKey: "Login")
            return true
        default:
            return false
        }
    }
    
}
