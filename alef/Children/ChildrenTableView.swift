//
//  ChildrenTableView.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit


class ChildrenTableView {
    
    func childrenTableViewOutlet(childrenTableView: UITableView, vc: UIViewController) {
        childrenTableView.dataSource = vc as? UITableViewDataSource
        childrenTableView.delegate = vc as? UITableViewDelegate
        childrenTableView.isScrollEnabled = false
        childrenTableView.separatorStyle = .none
    }
    
    func childrenTableViewDidAppearOutlet(childrenTableView: UITableView) {
        childrenTableView.rowHeight = childrenTableView.frame.height / 5
    }
}
