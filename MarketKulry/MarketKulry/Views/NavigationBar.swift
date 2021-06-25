//
//  NavigationBar.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import UIKit

class NavigationBar: UINavigationItem {
    
        let markBackbarbutton = UIBarButtonItem(image: (UIImage(systemName: "bookmark")?.withTintColor(.lightGray, renderingMode: .alwaysOriginal)), style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleBarButton(_:)))
        let cartBackbarbutton = UIBarButtonItem(image: (UIImage(systemName: "cart")?.withTintColor(.lightGray, renderingMode: .alwaysOriginal)), style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleBarButton(_:)))

}

extension NavigationBar {
        @objc
        func handleBarButton(_ sender: UIBarButtonItem) {
    }
}


