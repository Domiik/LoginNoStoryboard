//
//  UIViewController+Extension.swift
//  LoginNoStoryboard
//
//  Created by Domiik on 19.10.2021.
//

import UIKit

extension UIViewController {
    enum selectData {
        case mock
        case firebase
    }
    
    func alert(completion: @escaping (selectData) -> Void) {
        let alert = UIAlertController(title: "Wait", message: " Select data type", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Mock data", style: UIAlertAction.Style.default, handler: { (action) in
            completion(.mock)
        }))
        alert.addAction(UIAlertAction(title: "Firebase data", style: UIAlertAction.Style.cancel, handler: { (action) in
            completion(.firebase)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
