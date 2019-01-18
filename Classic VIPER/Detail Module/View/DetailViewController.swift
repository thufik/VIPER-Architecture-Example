//
//  DetailViewController.swift
//  Classic VIPER
//
//  Created by EquipeSuporteAplicacao on 7/31/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblSomethingTitle: UILabel!
    
    var somethingItem : Something!
    
    lazy var somethingPresenter = { () -> DetailSomethingPresenter in
       var somethingPresenter = DetailSomethingPresenter(detailSomethingView: self)
        
        return somethingPresenter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        somethingPresenter.viewDidLoad(somethingItem: somethingItem)
    }
}

extension DetailViewController : DetailSomethingViewProtocol{
    func setSomethingTitle(title : String){
        self.lblSomethingTitle.text = title
    }
}

protocol DetailSomethingViewProtocol {
    func setSomethingTitle(title : String)
}
