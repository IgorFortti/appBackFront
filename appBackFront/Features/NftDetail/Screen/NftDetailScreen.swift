//
//  NftDetailScreen.swift
//  appBackFront
//
//  Created by Igor Fortti on 14/03/23.
//

import UIKit

class NftDetailScreen: UIView {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(NftImageTableViewCell.self, forCellReuseIdentifier: NftImageTableViewCell.identifier)
        tableView.register(NftDescriptionTableViewCell.self, forCellReuseIdentifier: NftDescriptionTableViewCell.identifier)
        tableView.register(LastestDealTableViewCell.self, forCellReuseIdentifier: LastestDealTableViewCell.identifier)
        tableView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 26/255, alpha: 1.0)
        tableView.separatorStyle = .none
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, datasource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = datasource
    }
    
    private func addViews() {
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
