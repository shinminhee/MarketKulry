//
//  SearchAddressViewController.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/28.
//

import UIKit

class SearchAddressViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setLeftBarItems()
        view.backgroundColor = .white
        self.navigationController?.navigationBar.topItem?.title = "주소 검색"
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]

    }
}
