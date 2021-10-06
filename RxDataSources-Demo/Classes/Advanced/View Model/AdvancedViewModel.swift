//
//  AdvancedViewModel.swift
//  RxDataSources-Demo
//
//  Created by solution888 on 10/06/21.
//  Copyright © 2021 solution888. All rights reserved.
//

import RxSwift

struct AdvancedViewModel {

    let items = BehaviorSubject<[AdvancedTableViewSection]>(value: [
        .GridSection(items: [
            .GridTableViewItem(titles: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"])
        ]),
        
        .CustomSection(items: [
            .IndicatorTableViewItem,
            .SwitchTableViewItem(isOn: true)
        ])
    ])
    
    let dataSource = AdvancedDataSource.dataSource()
}
