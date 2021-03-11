//
//  Router.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation
import UIKit


protocol RouterInput {
    func routeEnlarge(segue: UIStoryboardSegue, sender: Any?)->EnlargeVC
    func routeReduce(segue: UIStoryboardSegue, sender: Any?)->ReduceVC
    func routerChange(segue: UIStoryboardSegue, sender: Any?) -> ChangeVC 
}

class Router: RouterInput {
        
    func routeEnlarge(segue: UIStoryboardSegue, sender: Any?)->EnlargeVC{
        guard segue.identifier == "Enlarge" else {return EnlargeVC()}
            guard let vc = segue.destination as? EnlargeVC else {return EnlargeVC()}
             return vc

    }
    func routeReduce(segue: UIStoryboardSegue, sender: Any?) -> ReduceVC {
        guard segue.identifier == "Reduce" else {return ReduceVC()}
            guard let vc = segue.destination as? ReduceVC else {return ReduceVC()}
             return vc
    }
    func routerChange(segue: UIStoryboardSegue, sender: Any?) -> ChangeVC {
        guard segue.identifier == "Change" else {return ChangeVC()}
            guard let vc = segue.destination as? ChangeVC else {return ChangeVC()}
             return vc
    }
}




