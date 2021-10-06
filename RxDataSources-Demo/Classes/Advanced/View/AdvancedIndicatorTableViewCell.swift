//
//  AdvancedIndicatorTableViewCell.swift
//  RxDataSources-Demo
//
//  Created by solution888 on 10/06/21.
//  Copyright © 2021 solution888. All rights reserved.
//

import UIKit
import RxSwift

class AdvancedIndicatorTableViewCell: UITableViewCell {
    
    // MARK: - Initialization
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Properties
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Cell with an indicator"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
  
}

// MARK: - UI Setup
extension AdvancedIndicatorTableViewCell {
    private func setupUI() {
        self.contentView.addSubview(titleLabel)
        
        titleLabel.centerXAnchor
            .constraint(equalTo: self.contentView.centerXAnchor)
            .isActive = true
        titleLabel.centerYAnchor
            .constraint(equalTo: self.contentView.centerYAnchor)
            .isActive = true
    }
    
   
}
