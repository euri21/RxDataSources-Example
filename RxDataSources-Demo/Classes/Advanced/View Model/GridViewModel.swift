//
//  GridViewModel.swift
//  RxDataSources-Demo
//
//  Created by solution888 on 10/06/21.
//  Copyright © 2021 solution888. All rights reserved.
//

import RxSwift

struct GridViewModel {
    
    let titles = BehaviorSubject<[String]>(value: [])
    
    init(titles: [String]) {
        self.titles.onNext(titles)
    }
}
