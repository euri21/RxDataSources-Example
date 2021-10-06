//
//  IntermediateItemViewModel.swift
//  RxDataSources-Demo
//
//  Created by solution888 on 10/06/21.
//  Copyright © 2021 solution888. All rights reserved.
//

import Foundation

/// ViewModel for an individual cell
struct IntermediateItemViewModel {
    
    var title: String
    
    init(itemModel: TableViewItem) {
        self.title = itemModel.title
    }
}
