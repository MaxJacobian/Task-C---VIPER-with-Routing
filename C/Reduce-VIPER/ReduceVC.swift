//
//  ReduceVC.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import UIKit

class ReduceVC: UIViewController {

    var reducePresenter: ReducePresenterInput = ReducePresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func reduce(_ sender: Any) {
        reducePresenter.reduce()
    }
    
    @IBAction func close(_ sender: Any) {
        reducePresenter.close(navigation: navigationController!)
    }
    
}
