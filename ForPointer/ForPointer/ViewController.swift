//
//  ViewController.swift
//  ForPointer
//
//  Created by Dennis on 3/8/22.
//

import UIKit

class ViewController: UIViewController {
    var button: UIButton!

    override func viewDidLoad() {
        setUpButton()
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    private func setUpButton() {
        button = UIButton()
        button.backgroundColor = .blue
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

