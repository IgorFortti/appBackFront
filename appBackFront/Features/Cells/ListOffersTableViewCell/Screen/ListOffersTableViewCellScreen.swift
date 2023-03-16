//
//  ListOffersTableViewCellScreen.swift
//  appBackFront
//
//  Created by Igor Fortti on 16/03/23.
//

import UIKit

class ListOffersTableViewCellScreen: UIView {
    
    lazy var userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.tintColor = .lightGray
        imageView.image = UIImage(named: "")
        return imageView
    }()
    
    lazy var nameUserLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()
    
    lazy var nftPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = UIColor(red: 255/255, green: 152/255, blue: 255/255, alpha: 1)
        return label
    }()
    
    lazy var lastVisualizationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textColor = UIColor(red: 255/255, green: 152/255, blue: 255/255, alpha: 1)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 26/255, alpha: 26/255)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        addSubview(userImageView)
        addSubview(nameUserLabel)
        addSubview(nftPriceLabel)
        addSubview(lastVisualizationLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            userImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            userImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            userImageView.heightAnchor.constraint(equalToConstant: 40),
            userImageView.widthAnchor.constraint(equalToConstant: 40),
            
            nameUserLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameUserLabel.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: 12),
            
            nftPriceLabel.topAnchor.constraint(equalTo: topAnchor,constant: 18),
            nftPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            lastVisualizationLabel.topAnchor.constraint(equalTo: nftPriceLabel.bottomAnchor, constant: 5),
            lastVisualizationLabel.trailingAnchor.constraint(equalTo: nftPriceLabel.trailingAnchor)
        ])
    }
}
