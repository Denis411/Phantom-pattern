//
//  Presenter.swift
//  MVPTransferData
//
//  Created by Dennis on 2/21/22.
//

import Foundation
import UIKit

final class Presenter {
    weak var vc: UIViewController?
    
    init(vc: UIViewController) {
        self.vc = vc
    }
    
    func tvData(tv: UITableView, index: IndexPath) -> MyCell{
        let cell = tv.dequeueReusableCell(withIdentifier: MyCell.identifier, for: index) as! MyCell
        cell.setUpText(text: "Not standard text")
        return cell
    }
}
