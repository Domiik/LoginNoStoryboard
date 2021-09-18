//
//  UserViewModel.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 18.09.2021.
//

import Foundation


class UserViewModel: NSObject {
    var user: User!
    
    public init(user: User) {
        self.user = user
    }
    
    // 2
    public var name: String {
        return user.name
    }
    
    public var token: String {
        get { return user.token }
        set { user.token = newValue }
    }
    
    func currentUser() -> Bool {
        if token == nil {
            return false
        } else {
            return true
        }
    }
    
}
