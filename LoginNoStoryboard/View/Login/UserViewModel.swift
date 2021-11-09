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

struct UserDefaultSetting {
    @Defaults(key: "Login", defaultValue: User())
    static var user
}

class UserViewModel {
    
    private var user: User?

 
}

extension UserViewModel: LoginViewModelProtocol {
    func signUser(login: String, password: String, completion: @escaping ((Bool) -> Void)) {
        let current = LoginViewAction.submit(login: login, password: password)
        switch current {
        case .submit(login: "Admin", password: "Admin"):
            UserDefaultSetting.user = user
            completion(true)
        default:
            completion(false)
        }
    }
    
    
    
}
