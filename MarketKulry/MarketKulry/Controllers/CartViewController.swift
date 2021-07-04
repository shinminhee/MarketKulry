//
//  CartViewController.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/28.
//

import UIKit

class CartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setLeftBarItems()
        view.backgroundColor = .white
        self.navigationController?.navigationBar.topItem?.title = "장바구니"        
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]

    }
}
