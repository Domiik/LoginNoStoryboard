//
//  LoginViewModel.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 08.10.2021.
//

import Foundation
import Firebase


protocol LoginViewModelProtocol: class {
    func signUser() -> Bool
}

class LoginViewModel {
    
    private var user: User?
    private weak var delegate: LoginViewModelProtocol?
    
    func signUser(email: String?, password: String?, completion: @escaping(() -> Void), failure: @escaping((_ error: String) -> Void)){
        FirebaseAuth.Auth.auth().signIn(withEmail: email!, password: password!) { result, error in
            if let error = error {
                failure(error.localizedDescription)
            } else {
                completion()
            }
        }
    }
    
    func logautUser() {
       try! FirebaseAuth.Auth.auth().signOut()
    }
    
}
