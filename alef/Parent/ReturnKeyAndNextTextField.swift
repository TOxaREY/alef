//
//  ReturnKeyAndNextTextField.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit


class ReturnKeyAndNextTextField {
    
    func returnKeyAndNextTextField(textField: UITextField, vc: UIViewController) -> Bool {
        let nextTag = textField.tag + 1
        if let nextResponder = vc.view.viewWithTag(nextTag) {
            nextResponder.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}
