//
//  AdvancedSwitchTableViewCell.swift
//  RxDataSources-Demo
//
//  Created by solution888 on 10/06/21.
//  Copyright © 2021 solution888. All rights reserved.
//

import UIKit
import RxSwift

class AdvancedSwitchTableViewCell: UITableViewCell {
    
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
        label.text = "Cell with a switch"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var `switch`: UISwitch = {
        let `switch` = UISwitch()
        `switch`
            .translatesAutoresizingMaskIntoConstraints = false
        return `switch`
    }()
  
}

// MARK: - UI Setup
extension AdvancedSwitchTableViewCell {
    private func setupUI() {
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(`switch`)
        
        titleLabel.centerXAnchor
            .constraint(equalTo: self.contentView.centerXAnchor)
            .isActive = true
        titleLabel.centerYAnchor
            .constraint(equalTo: self.contentView.centerYAnchor)
            .isActive = true
        
        `switch`.rightAnchor
            .constraint(equalTo: self.contentView.rightAnchor, constant: -20)
            .isActive = true
        `switch`.centerYAnchor
            .constraint(equalTo: self.contentView.centerYAnchor)
            .isActive = true
    }
    
   
}
