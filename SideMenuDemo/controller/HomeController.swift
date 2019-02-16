//
//  HomeController.swift
//  SideMenuDemo
//
//  Created by praveen reddy on 2/16/19.
//  Copyright © 2019 praveen reddy. All rights reserved.
//

import UIKit

protocol HomeControllerDelegate {
    func handleMenuToggle()
}

class HomeController: UIViewController {

    var delegate: HomeControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        configureNavigationBar()
        configureNavigationBar()
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu"), style: .done, target: self, action: #selector(handleMenuToggle))
        
    }

    @objc func handleMenuToggle() {
        print("MenuToggle")
        delegate?.handleMenuToggle()
    }
}
