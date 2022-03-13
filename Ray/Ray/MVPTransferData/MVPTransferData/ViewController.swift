//
//  ViewController.swift
//  MVPTransferData
//
//  Created by Dennis on 2/21/22.
//

import UIKit

class ViewController: UIViewController {
    var customView: View!
    var presenter: Presenter?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView = View(frame: view.frame)
        view.addSubview(customView)
    }
    
    func tvData(tv: UITableView, index: IndexPath) -> MyCell {
        presenter = Presenter(vc: self)
        return presenter?.tvData(tv: tv, index: index) ?? MyCell()
    }
}

