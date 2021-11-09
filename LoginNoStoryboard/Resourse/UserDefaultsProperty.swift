//
//  UserDefaultsProperty.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 03.10.2021.
//

import UIKit

@propertyWrapper
struct Defaults<T> {
    let key: String
    private let defaultValue: T
    
    private var storage: UserDefaults = .standard
    
    init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }

    var wrappedValue: T? {
        get {
            storage.value(forKey: key) as? T
        }
        set{
            storage.setValue(newValue, forKey: key)
        }
    }
}
