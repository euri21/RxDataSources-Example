//
//  AdvancedCollectionViewCell.swift
//  RxDataSources-Demo
//
//  Created by solution888 on 10/06/21.
//  Copyright © 2021 solution888. All rights reserved.
//

import UIKit

class AdvancedCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Properties
    lazy var roundedBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var numberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 25.0)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
}

// MARK: - UI Setup
extension AdvancedCollectionViewCell {
    private func setupUI() {
        self.contentView.addSubview(roundedBackgroundView)
        roundedBackgroundView.addSubview(numberLabel)
        
        roundedBackgroundView.widthAnchor
            .constraint(equalTo: self.contentView.widthAnchor)
            .isActive = true
        roundedBackgroundView.heightAnchor
            .constraint(equalTo: self.contentView.heightAnchor)
            .isActive = true
        
        numberLabel.centerXAnchor
            .constraint(equalTo: roundedBackgroundView.centerXAnchor)
            .isActive = true
        
        numberLabel.centerYAnchor
            .constraint(equalTo: roundedBackgroundView.centerYAnchor)
            .isActive = true
    }
    
}
