//
//  DetailSomethingPresenter.swift
//  Classic VIPER
//
//  Created by EquipeSuporteAplicacao on 7/31/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class DetailSomethingPresenter: NSObject {
    
    var detailSomethingView : DetailSomethingViewProtocol
    
    init(detailSomethingView : DetailSomethingViewProtocol) {
        self.detailSomethingView = detailSomethingView
    }
    
    func viewDidLoad(somethingItem : Something){
        detailSomethingView.setSomethingTitle(title: somethingItem.somethingTitle)
    }
}
