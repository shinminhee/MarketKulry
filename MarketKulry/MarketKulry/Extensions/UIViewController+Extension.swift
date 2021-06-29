//
//  UIViewController+Extension.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/28.
//

import UIKit

extension UIViewController {
    
    final func setBarItems() {
        let searchAddressBarButton = UIBarButtonItem(image: (UIImage(systemName: "mappin.and.ellipse")?.withTintColor(.white, renderingMode: .alwaysOriginal)), style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleSearchAddressBarButton(_:)))
        let cartBarButton = UIBarButtonItem(image: (UIImage(systemName: "cart")?.withTintColor(.white, renderingMode: .alwaysOriginal)), style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleCartBarButton(_:)))
        navigationItem.rightBarButtonItems = [cartBarButton, searchAddressBarButton]
    }
    
    final func setLeftBarItems() {
        let closeBarButton = UIBarButtonItem(image: (UIImage(systemName: "xmark")?.withTintColor(.black, renderingMode: .alwaysOriginal)), style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleCloseBarButton(_:)))
        navigationItem.leftBarButtonItem = closeBarButton
    }
    
    @objc
    func handleSearchAddressBarButton(_ sender: UIBarButtonItem) {
        let searchVC = SearchAddressViewController()
        let searchNavController = UINavigationController(rootViewController: searchVC)
        searchNavController.modalPresentationStyle = .fullScreen
        self.navigationController?.present(searchNavController, animated: true, completion: nil)
    }
    
    @objc
    func handleCartBarButton(_ sender: UIBarButtonItem) {
        let cartVC = CartViewController()
        let cartNavController = UINavigationController(rootViewController: cartVC)
        cartNavController.modalPresentationStyle = .fullScreen
        self.navigationController?.present(cartNavController, animated: true, completion: nil)
    }
    
   
    
    @objc
    func handleCloseBarButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}
