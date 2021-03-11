//
//  ChangeRouter.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation
import UIKit


protocol ChangeRouterInput {
    func submit(navigation: UINavigationController)
}

class ChangeRouter: ChangeRouterInput {
    
    func submit(navigation: UINavigationController){
        navigation.popViewController(animated: true)
    }
}
