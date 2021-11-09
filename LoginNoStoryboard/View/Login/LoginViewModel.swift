//
//  LoginViewModel.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 08.10.2021.
//

import Foundation
import Firebase




class LoginViewModel {
    
    private var user: User?
    
    
    
    func logautUser() {
       try! FirebaseAuth.Auth.auth().signOut()
    }
    
}


extension LoginViewModel: LoginViewModelProtocol {
    func signUser(login: String, password: String, completion: @escaping ((Bool) -> Void)) {
        FirebaseAuth.Auth.auth().signIn(withEmail: login, password: password) { result, error in
            if let error = error {
                completion(false)
            } else {
                completion(true)
            }
        }
    }
    

   
}
