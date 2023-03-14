//
//  NftDetailVC.swift
//  appBackFront
//
//  Created by Igor Fortti on 14/03/23.
//

import UIKit

class NftDetailVC: UIViewController {
    
    private var screen: NftDetailScreen?
    private let viewModel: NftDetailViewModel
    
    required init(nft: Nft) {
        self.viewModel = NftDetailViewModel(nft: nft)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        screen = NftDetailScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTableViewProtocols(delegate: self, datasource: self)
    }
}

extension NftDetailVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NftImageTableViewCell.identifier, for: indexPath) as? NftImageTableViewCell
        cell?.setupCell(urlImage: viewModel.nftImage, delegate: self)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
        
    }
}

extension NftDetailVC: NftImageTableViewCellScreenDelegate {
    
    func tappedCloseButton() {
        dismiss(animated: true)
    }
    
    func tappedMagnifyingGlassButton() {
        print(#function)
    }
}
