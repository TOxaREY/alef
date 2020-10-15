//
//  ParentFioTextField.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit

class ParentFioTextField {
    
    func parentFioTextFieldOutlet(parentFioTextField: UITextField, vc: UIViewController) {
        parentFioTextField.delegate = vc as? UITextFieldDelegate
        parentFioTextField.tag = 0
        parentFioTextField.font = .boldSystemFont(ofSize: 18.0)
        parentFioTextField.keyboardType = .default
    }
}
