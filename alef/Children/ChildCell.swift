//
//  ChildCell.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit


class ChildCell: UITableViewCell, UITextFieldDelegate {
    
    var childIndex = Int()
    
    @IBOutlet weak var childNameLabel: UILabel!
    @IBOutlet weak var childNameTextField: UITextField!
    @IBOutlet weak var childAgeLabel: UILabel!
    @IBOutlet weak var childAgeTextField: UITextField!
    @IBAction func childDeleteButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "childDelete"), object: nil, userInfo: ["index": childIndex])
    }
    
    func childNameLabelOutlet() {
        childNameLabel.font = .boldSystemFont(ofSize: 16.0)
        childNameLabel.text = "Ребенок"
    }
    
    func childAgeLabelOutlet() {
        childAgeLabel.font = .boldSystemFont(ofSize: 16.0)
        childAgeLabel.text = "Возраст"
    }
    
    func childNameTextFieldOutlet(vc: UIViewController) {
        childNameTextField.delegate = self
        childNameTextField.font = .boldSystemFont(ofSize: 18.0)
        childNameTextField.keyboardType = .default
    }
    
    func childAgeTextFieldOutlet(vc: UIViewController) {
        childAgeTextField.delegate = self
        childAgeTextField.font = .boldSystemFont(ofSize: 18.0)
        childAgeTextField.keyboardType = .default
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if textField == childNameTextField {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "childAddName"), object: nil, userInfo: ["index": childIndex, "name": textField.text ?? ""])
        } else if textField == childAgeTextField {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "childAddAge"), object: nil, userInfo: ["index": childIndex, "age": textField.text ?? ""])
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == childAgeTextField {
            let allowedCharacters = CharacterSet(charactersIn:"0123456789")
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet)
        }
        return true
    }
}
