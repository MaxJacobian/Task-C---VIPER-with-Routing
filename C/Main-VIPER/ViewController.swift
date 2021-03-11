//
//  ViewController.swift
//  C
//
//  Created by Maksym on 11.03.2021.
//

import UIKit

class ViewController: UIViewController {

    var presenterInput: PresenterInput = Presenter()
    
    
    @IBOutlet var labelText: UILabel!
    
    @IBOutlet var counter: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        presenterInput.route(segue: segue, sender: sender, counter: counter, textLabel: labelText)
    }
    


}

