//
//  SomethingListPresent.swift
//  Classic VIPER
//
//  Created by EquipeSuporteAplicacao on 7/30/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class SomethingListPresenter: NSObject {
    
    var somethingListViewDelegate : somethingListViewProtocol
    var somethingListInteractorDelegate : SomethingListInteractorProtocol
    
    init(somethingListViewDelegate : somethingListViewProtocol, somethingListInteractorDelegate : SomethingListInteractorProtocol) {
        self.somethingListViewDelegate = somethingListViewDelegate
        self.somethingListInteractorDelegate = somethingListInteractorDelegate
    }
    
    func viewDidLoad(){
        
        somethingListViewDelegate.setDelegateAndDatasource()
        
        let somethingArray = fetchSomethingData()
        
        somethingListViewDelegate.populateSomethingArray(array: somethingArray)
    }
    
    func fetchSomethingData() -> [Something]{
        return somethingListInteractorDelegate.fetchSomething()
    }
    
    func showDetailSomethingView(somethingItem : Something, view : UIViewController){
        let somethingWireframe = SomethingListWireframe()
        
        somethingWireframe.showDetailSomethingView(somethingItem: somethingItem, view: view)
    }
}
