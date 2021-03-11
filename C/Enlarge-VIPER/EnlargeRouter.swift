//
//  EnlargeRouter.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation
import UIKit


protocol EnlargeRouterInput {
    func close(navigation: UINavigationController)
}

class EnlargeRouter: EnlargeRouterInput {
    func close(navigation: UINavigationController){
        navigation.popViewController(animated: true)
    }
}
