//
//  TableView.swift
//  MVPTransferData
//
//  Created by Dennis on 2/21/22.
//

import UIKit

class TableView: UIView {
    var myTableView: UITableView?
    var myView: View?
    
    override init(frame: CGRect) {
        myTableView = UITableView(frame: frame)
        super.init(frame: frame)
        setUpTableView()
        self.addSubview(myTableView!)
        self.layoutSubviews()
        myView = View()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpTableView() {
        self.addSubview(myTableView!)
        myTableView?.frame = self.frame
        myTableView?.backgroundColor = .blue
        myTableView?.delegate = self
        myTableView?.dataSource = self
        myTableView?.register(MyCell.self, forCellReuseIdentifier: MyCell.identifier)
    }
    
    func setUpTableViwe(tv: @escaping (_ table: UITableView, _ index: IndexPath) -> MyCell) {
    }
}

extension TableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        myView?.tvData(tv: tableView, index: indexPath) ?? MyCell()
}
}


class MyCell: UITableViewCell {
    static let identifier: String = "MyCell"
    
    let label = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .black
        self.addSubview(label)
        label.frame = self.frame
        label.textColor = .yellow
        label.text = "Standard"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpText(text: String) {
        label.text = text
    }
}
