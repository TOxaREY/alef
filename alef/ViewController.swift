//
//  ViewController.swift
//  alef
//
//  Created by REYNIKOV ANTON on 15.10.2020.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    
    var viewModel = ViewModel()
    
    @IBOutlet weak var parentFioLabel: UILabel!
    @IBOutlet weak var parentFioTextField: UITextField!
    @IBOutlet weak var parentAgeLabel: UILabel!
    @IBOutlet weak var parentAgeTextField: UITextField!
    @IBOutlet weak var childrenTableView: UITableView!
    @IBOutlet weak var addChildButton: UIButton!
    @IBAction func addChildButton(_ sender: Any) {
        viewModel.addChildButton.addChildButtonAction(viewModel: viewModel, addChildButton: addChildButton)
    }
    
    @objc func reloadChildrenTableView() {
        viewModel.reloadChildrenTableView.reloadChildrenTableView(childrenTableView: childrenTableView)
    }
    
    @objc func childDelete(notification: Notification) {
        viewModel.deleteChild.deleteChild(viewModel: viewModel, addChildButton: addChildButton, vc: self, notification: notification)
    }
    
    @objc func childAddName(notification: Notification) {
        viewModel.addChild.addChildName(viewModel: viewModel, notification: notification)
    }
    
    @objc func childAddAge(notification: Notification) {
        viewModel.addChild.addChildAge(viewModel: viewModel, notification: notification)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.vcLoadItem(vc: self, parentFioLbl: parentFioLabel, parentFioTextFld: parentFioTextField, parentAgeLbl: parentAgeLabel, parentAgeTextFld: parentAgeTextField, childrenTblView: childrenTableView)
        NotificationCenter.default.addObserver(self, selector: #selector(self.reloadChildrenTableView), name: NSNotification.Name(rawValue: "reloadChildrenTableView"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.childDelete(notification:)), name: NSNotification.Name(rawValue: "childDelete"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.childAddName(notification:)), name: NSNotification.Name(rawValue: "childAddName"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.childAddAge(notification:)), name: NSNotification.Name(rawValue: "childAddAge"), object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        viewModel.childrenTableView.childrenTableViewDidAppearOutlet(childrenTableView: childrenTableView)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        viewModel.returnKeyAndNextTextField.returnKeyAndNextTextField(textField: textField, vc: self)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        viewModel.checkNumberAgeTextField.checkNumberAgeTextField(textField: textField, string: string)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.child.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        viewModel.cellChild(tableView: tableView, indexPath: indexPath, vc: self)
    }
}

