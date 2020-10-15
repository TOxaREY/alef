//
//  ReloadChildrenTableView.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit


class ReloadChildrenTableView {
    
    func reloadChildrenTableView(childrenTableView: UITableView) {
        DispatchQueue.main.async {
            childrenTableView.reloadData()
        }
    }
}
