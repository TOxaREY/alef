//
//  AddChildButton.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit


class AddChildButton {
    
    func addChildButtonAction(viewModel: ViewModel, addChildButton: UIButton) {
        viewModel.child.append(Child(name: "", age: ""))
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "reloadChildrenTableView"), object: nil)
        if viewModel.child.count == 5 {
            addChildButton.isHidden = true
        }
    }
}
