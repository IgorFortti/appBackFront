//
//  WalletVC.swift
//  appBackFront
//
//  Created by Igor Fortti on 22/03/23.
//

import UIKit

class WalletVC: UIViewController {
    
    private var screen: WalletScreen?
    private var viewModel: WalletViewModel = WalletViewModel()
    override func loadView() {
        screen = WalletScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetch(.request)
    }
}
