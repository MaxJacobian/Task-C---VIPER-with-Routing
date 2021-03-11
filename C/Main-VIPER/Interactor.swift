//
//  Interactor.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation

protocol  InteractorInput {
    var count: Int {get set}
    var text: String {get set}
}
class Interactor: InteractorInput {
    var count = 0
    var text = ""
 
}
