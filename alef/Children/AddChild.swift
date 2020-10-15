//
//  AddChild.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit


class AddChild {
    
    func addChildName(viewModel: ViewModel, notification: Notification) {
        if let index = notification.userInfo?["index"] as? Int, let name = notification.userInfo?["name"] as? String {
            viewModel.child[index].name = name
        }
    }
    
    func addChildAge(viewModel: ViewModel, notification: Notification) {
        if let index = notification.userInfo?["index"] as? Int, let age = notification.userInfo?["age"] as? String  {
            viewModel.child[index].age = age
        }
    }
}
