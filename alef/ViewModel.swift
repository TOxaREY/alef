//
//  ViewModel.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit


class ViewModel {
    
    private var parentFioLabel = ParentFioLabel()
    private var parentFioTextField = ParentFioTextField()
    private var parentAgeLabel = ParentAgeLabel()
    private var parentAgeTextField = ParentAgeTextField()
    var checkNumberAgeTextField = CheckNumberAgeTextField()
    var returnKeyAndNextTextField = ReturnKeyAndNextTextField()
    var reloadChildrenTableView = ReloadChildrenTableView()
    var childrenTableView = ChildrenTableView()
    var child = [Child]()
    var addChildButton = AddChildButton()
    var deleteChild = DeleteChild()
    var addChild = AddChild()
    
    func vcLoadItem(vc: UIViewController, parentFioLbl: UILabel, parentFioTextFld: UITextField, parentAgeLbl: UILabel, parentAgeTextFld: UITextField, childrenTblView: UITableView) {
        parentFioLabel.parentFioLabelOutlet(parentFioLabel: parentFioLbl)
        parentFioTextField.parentFioTextFieldOutlet(parentFioTextField: parentFioTextFld, vc: vc)
        parentAgeLabel.parentAgeLabelOutlet(parentAgeLabel: parentAgeLbl)
        parentAgeTextField.parentAgeTextFieldOutlet(parentAgeTextField: parentAgeTextFld, vc: vc)
        childrenTableView.childrenTableViewOutlet(childrenTableView: childrenTblView, vc: vc)
    }
    
    func cellChild(tableView: UITableView, indexPath: IndexPath, vc: UIViewController) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "childCell") as! ChildCell
        cell.childIndex = indexPath.row
        cell.childNameLabelOutlet()
        cell.childAgeLabelOutlet()
        cell.childNameTextFieldOutlet(vc: vc)
        cell.childAgeTextFieldOutlet(vc: vc)
        cell.childNameTextField.text = child[indexPath.row].name
        cell.childAgeTextField.text = child[indexPath.row].age
        cell.observerEnableDisableButton()
        return cell
    }

}
