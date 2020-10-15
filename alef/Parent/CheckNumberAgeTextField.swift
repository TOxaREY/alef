//
//  CheckNumberAgeTextField.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit


class CheckNumberAgeTextField {
    
    func checkNumberAgeTextField(textField: UITextField, string: String) -> Bool {
        if textField.tag == 1 {
            let allowedCharacters = CharacterSet(charactersIn:"0123456789")
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet)
        }
        return true
    }
}

