//
//  ChangeInteractor.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import Foundation

protocol ChangeInteractorInput {
    var text: String {get set}
}

class ChangeInteractor: ChangeInteractorInput {
    var text = ""
}
