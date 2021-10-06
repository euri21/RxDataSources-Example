//
//  IntermediateViewModel.swift
//  RxDataSources-Demo
//
//  Created by solution888 on 10/06/21.
//  Copyright © 2021 solution888. All rights reserved.
//

import RxSwift

struct IntermediateViewModel {
    
    var items = BehaviorSubject<[TableViewSection]>(value: [
        
        TableViewSection(items: [
        
            TableViewItem(title: "One"),
            TableViewItem(title: "Two"),
            TableViewItem(title: "Three"),
            TableViewItem(title: "Four"),
            TableViewItem(title: "Five"),
            TableViewItem(title: "Six")
            
        ], header: "First section"),
        
        TableViewSection(items: [
        
            TableViewItem(title: "Seven"),
            TableViewItem(title: "Eight"),
            TableViewItem(title: "Nine"),
            TableViewItem(title: "Ten"),
            TableViewItem(title: "Evelen"),
            TableViewItem(title: "Twelve")
            
        ], header: "Second section")
        
    ])
    
    let dataSource = IntermediateDataSource.dataSource()
}
