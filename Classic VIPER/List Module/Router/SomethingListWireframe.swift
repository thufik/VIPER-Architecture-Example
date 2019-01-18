//
//  SomethingListWireframe.swift
//  Classic VIPER
//
//  Created by EquipeSuporteAplicacao on 7/31/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class SomethingListWireframe: NSObject {
    func showDetailSomethingView(somethingItem : Something, view : UIViewController){
    
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        let detailSomethingView = storyboard.instantiateViewController(withIdentifier: "detailSomething") as! DetailViewController
        detailSomethingView.somethingItem = somethingItem
        
        view.navigationController?.pushViewController(detailSomethingView, animated: true)
        
    }
}
