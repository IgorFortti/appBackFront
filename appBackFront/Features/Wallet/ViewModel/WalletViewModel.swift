//
//  WalletViewModel.swift
//  appBackFront
//
//  Created by Igor Fortti on 22/03/23.
//

import UIKit

class WalletViewModel {
    
    private let service: WalletService = WalletService()
    
    public func fetch(_ type: TypeFetch) {
        switch type {
        case .mock:
            service.getWalletFromJson { result, failure in
                print(result)
            }
        case .request:
            service.getWallet { result, failure in
                print(result)
            }
        }
    }
}
