//
//  LoginViewModel.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 08.10.2021.
//

import Foundation
import Firebase

class LoginViewModel {
    
    var user: User?
    
    
    func signUser(email: String?, password: String?, completion: @escaping(() -> Void), failure: @escaping((_ error: String) -> Void)){
        FirebaseAuth.Auth.auth().signIn(withEmail: email!, password: password!) { [weak self] result, error in
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
