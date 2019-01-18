//
//  ViewController.swift
//  Classic VIPER
//
//  Created by EquipeSuporteAplicacao on 7/30/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    lazy var presenter : SomethingListPresenter = { () -> SomethingListPresenter in
        var interactor = SomethingListInteractor()
        var presenter = SomethingListPresenter(somethingListViewDelegate: self, somethingListInteractorDelegate: interactor)
        
        return presenter
    }()
    
    lazy var somethingArray : [Something] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
}

extension ViewController : somethingListViewProtocol{
    func populateSomethingArray(array: [Something]) {
        self.somethingArray = array
    }
    
    func setDelegateAndDatasource(){
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = somethingArray[indexPath.row].somethingTitle
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return somethingArray.count
    }
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let somethingItem = self.somethingArray[indexPath.row]
        
        presenter.showDetailSomethingView(somethingItem: somethingItem, view: self)
    }
}

protocol somethingListViewProtocol {
    func populateSomethingArray(array : [Something])
    func setDelegateAndDatasource()
}

