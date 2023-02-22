//
//  HomeVC.swift
//  appBackFront
//
//  Created by Igor Fortti on 22/02/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
