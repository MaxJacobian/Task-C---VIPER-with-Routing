//
//  Pressenter.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation
import UIKit



protocol PresenterInput {
    func route(segue: UIStoryboardSegue, sender: Any?, counter: UILabel, textLabel: UILabel)
}

class Presenter: PresenterInput {
    
    var interactorInput: InteractorInput = Interactor()
    var routerInput: RouterInput = Router()
    
    func route(segue: UIStoryboardSegue, sender: Any?, counter: UILabel, textLabel: UILabel){
        routerInput.routeEnlarge(segue: segue, sender: sender).enlargePresenter.complition = {
            [unowned self]  c in
            interactorInput.count += c
            counter.text = "\(interactorInput.count)"
        }
        routerInput.routeReduce(segue: segue, sender: sender).reducePresenter.complition = {
            [unowned self]  c in
            interactorInput.count += c
            counter.text = "\(interactorInput.count)"
        }
        routerInput.routerChange(segue: segue, sender: sender).changePresenter.complition = {
            [unowned self]  newText in
            interactorInput.text = newText
            textLabel.text = interactorInput.text
            
        }
    }
}
