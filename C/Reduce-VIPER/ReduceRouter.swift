//
//  ReduceRouter.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation
import UIKit


protocol ReduceRouterInput {
    func close(navigation: UINavigationController)
}
class ReduceRouter: ReduceRouterInput {
    
    
    func close(navigation: UINavigationController){
        navigation.popViewController(animated: true)
    }
}
