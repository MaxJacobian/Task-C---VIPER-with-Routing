//
//  ChangeVC.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import UIKit

class ChangeVC: UIViewController {
    
    var changePresenter: ChangePresenterInput = ChangePresenter()
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func submit(_ sender: Any) {
        changePresenter.submit(navigation: navigationController!, textField: textField)
    }
}


