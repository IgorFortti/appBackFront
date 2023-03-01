//
//  NftTableViewCell.swift
//  appBackFront
//
//  Created by Igor Fortti on 01/03/23.
//

import UIKit

class NftTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: NftTableViewCell.self)
    
    lazy var screen: NftTableViewCellScreen = {
        let view = NftTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    private func addViews() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
    
}
