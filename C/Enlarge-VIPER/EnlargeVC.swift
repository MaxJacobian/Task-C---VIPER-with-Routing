//
//  EnlargeVC.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import UIKit

class EnlargeVC: UIViewController {
    
    var enlargePresenter: EnlargePresenterInput = EnlargePresenter()
    
    
    @IBAction func enlarge(_ sender: Any) {
        enlargePresenter.enlarge()
      
    }
    

    @IBAction func close(_ sender: Any) {
        enlargePresenter.close(navigation: navigationController!)
    }
    
}
