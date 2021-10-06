//
//  SimpleViewModel.swift
//  RxDataSources-Demo
//
//  Created by solution888 on 10/06/21.
//  Copyright © 2021 solution888. All rights reserved.
//
import RxSwift

struct SimpleViewModel {

    var items = Observable<[String]>.of(
        ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    )
        
}
