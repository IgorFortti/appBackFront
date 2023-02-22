//
//  HomeService.swift
//  appBackFront
//
//  Created by Igor Fortti on 22/02/23.
//

import UIKit

protocol HomeServiceDelegate: GenericService {
    func getHomeDataFromJson(completion: @escaping completion<NFTData?>)
}

class HomeService: HomeServiceDelegate {
    
    
    
    func getHomeDataFromJson(completion: @escaping completion<NFTData?>) {
        if let url = Bundle.main.url(forResource: "HomeData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let nftData: NFTData = try JSONDecoder().decode(NFTData.self, from: data)
                completion(nftData, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "HomeData", error))
            }
        } else {
            completion(nil, Error.fileNotFound(name: "HomeData"))
        }
    }
}
