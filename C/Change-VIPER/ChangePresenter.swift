//
//  ChangePresenter.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation
import UIKit

protocol ChangePresenterInput {
    func submit(navigation: UINavigationController, textField: UITextField)
    var complition: ((String)->())? {get set}
}

class ChangePresenter:ChangePresenterInput{
    
    var complition: ((String) -> ())?
    var changeRouter: ChangeRouterInput = ChangeRouter()
    var changeInteractor: ChangeInteractorInput = ChangeInteractor()
    
    
    func submit(navigation: UINavigationController, textField: UITextField){
        guard let text = textField.text, text != "" else {
            complition?("")
            changeRouter.submit(navigation: navigation)
            return
        }
        complition?(text)
        changeRouter.submit(navigation: navigation)
    }
}
