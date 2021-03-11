//
//  ReducePresenter.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation
import UIKit

protocol ReducePresenterInput {
    func close(navigation: UINavigationController)
    func reduce()
    var complition: ((Int)->())? {get set}
}

class ReducePresenter: ReducePresenterInput {
    
    var complition: ((Int)->())?
    var reduceRouter: ReduceRouterInput = ReduceRouter()
    var reduceInteractor: ReduceInteractorInput = ReduceInteractor()
    
    func reduce(){
        reduceInteractor.reduceTo()
        print(reduceInteractor.count)
    }
    
    func close(navigation: UINavigationController){
        complition?(reduceInteractor.count)
        reduceRouter.close(navigation: navigation)
    }
    
}
