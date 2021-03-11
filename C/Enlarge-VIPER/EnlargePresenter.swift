//
//  EnlargePresenter.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation
import UIKit

protocol EnlargePresenterInput {
    func close(navigation: UINavigationController)
    var complition: ((Int)->())?{get set}
    func enlarge()
}

class EnlargePresenter: EnlargePresenterInput {
    
    var complition: ((Int)->())?
    var enlargeRouter: EnlargeRouterInput = EnlargeRouter()
    var enlargeInteractor: EnlargeInteractorInput = EnlargeInteractor()
    
    func enlarge() {
        enlargeInteractor.enlargeTo()
        print(enlargeInteractor.count)
    }
    func close(navigation: UINavigationController) {
        complition?(enlargeInteractor.count)
        enlargeRouter.close(navigation: navigation)
    }
    
}
