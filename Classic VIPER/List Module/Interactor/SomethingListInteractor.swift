//
//  SomethingListInteractor.swift
//  Classic VIPER
//
//  Created by EquipeSuporteAplicacao on 7/30/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class SomethingListInteractor: SomethingListInteractorProtocol {
    func fetchSomething() -> [Something]{
        var somethingArray : [Something] = []
        
        for index in 0..<6{
            let something = Something(somethingTitle: "title \(index)", somethingSubtitle: "subtitle \(index)")
            somethingArray.append(something)
        }
        
        return somethingArray
    }
}

protocol SomethingListInteractorProtocol {
    func fetchSomething() -> [Something]
}
