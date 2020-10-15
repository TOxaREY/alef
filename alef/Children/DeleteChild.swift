//
//  DeleteChild.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit


class DeleteChild {
    
    func deleteChild(viewModel: ViewModel, addChildButton: UIButton, vc: ViewController, notification: Notification) {
        if let index = notification.userInfo?["index"] as? Int {
            viewModel.child.remove(at: index)
        }
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "reloadChildrenTableView"), object: nil)
        if viewModel.child.count < 5 {
            addChildButton.isHidden = false
            vc.addChildButton.setNeedsDisplay()
        }
    }
}
