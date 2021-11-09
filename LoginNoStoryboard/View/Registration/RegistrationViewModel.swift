//
//  RegistrationViewModel.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 19.10.2021.
//

import Foundation
import Firebase

class RegistrationViewModel {
    
    private var user: User?
    
    func createUser(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let user = result?.user {
                completionBlock(true)
            } else {
                completionBlock(false)
            }
        }
    }
    
}
