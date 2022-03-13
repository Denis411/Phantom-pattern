//
//  View.swift
//  MVPTransferData
//
//  Created by Dennis on 2/21/22.
//

import UIKit

class View: UIView {
    var tv: TableView?
    var vc: ViewController?
    
    override init(frame: CGRect) {
        tv = TableView(frame: frame)
        super.init(frame: frame)
        self.addSubview(tv!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpTV(tv: @escaping (_ table: UITableView, _ indexPath: IndexPath) -> MyCell) {
        
    }
    
    func tvData(tv: UITableView, index: IndexPath) -> MyCell{
        vc = ViewController()
        return vc?.tvData(tv: tv, index: index) ?? MyCell()
    }
}
