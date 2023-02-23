//
//  HomeVC.swift
//  appBackFront
//
//  Created by Igor Fortti on 22/02/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen: HomeScreen?
    var viewModel = HomeViewModel()
        
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        viewModel.fetchRequest(.request)
        
    }
}

extension HomeVC: HomeViewModelDelegate {
    func success() {
        print(#function)
    }
    
    func error() {
        print(#function)
    }
    
    
}
