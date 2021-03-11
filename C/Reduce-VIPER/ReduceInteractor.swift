//
//  ReduceInteractor.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation


protocol ReduceInteractorInput {
    var count: Int {get set}
    func reduceTo()
}
class ReduceInteractor: ReduceInteractorInput {
    var count: Int = 0
    func reduceTo() {
        self.count -= 1
    }
}
