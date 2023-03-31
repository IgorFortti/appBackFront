//
//  ProfileTableViewCell.swift
//  appBackFront
//
//  Created by Igor Fortti on 31/03/23.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: ProfileTableViewCell.self)
    
    lazy var screen: ProfileTableViewCellScreen = {
        let view = ProfileTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        contentView.addSubview(screen)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    public func setupCell(delegate: ProfileTableViewCellScreenProtocol) {
        screen.delegate(delegate: delegate)
    }

}
