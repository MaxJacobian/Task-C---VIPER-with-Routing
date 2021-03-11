//
//  EnlargeInteractor.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation

protocol EnlargeInteractorInput  {
    var count: Int {get set}
    func enlargeTo()
}

class EnlargeInteractor: EnlargeInteractorInput {
    var count = 0
    func enlargeTo(){
        self.count += 1
    }
    
}
