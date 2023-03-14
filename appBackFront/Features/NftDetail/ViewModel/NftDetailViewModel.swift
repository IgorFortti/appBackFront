//
//  NftDetailViewModel.swift
//  appBackFront
//
//  Created by Igor Fortti on 14/03/23.
//

import UIKit

class NftDetailViewModel {

    let nft: Nft
    
    init(nft: Nft) {
        self.nft = nft
    }
    
    public var numberOfRowsInSection: Int {
        return 1
    }
    
    public var nftImage: String {
        return nft.nftImage ?? ""
    }
}
