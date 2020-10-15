//
//  ParentAgeTextField.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit


class ParentAgeTextField {
    
    func parentAgeTextFieldOutlet(parentAgeTextField: UITextField, vc: UIViewController) {
        parentAgeTextField.delegate = vc as? UITextFieldDelegate
        parentAgeTextField.tag = 1
        parentAgeTextField.font = .boldSystemFont(ofSize: 18.0)
        parentAgeTextField.keyboardType = .default
    }
}
