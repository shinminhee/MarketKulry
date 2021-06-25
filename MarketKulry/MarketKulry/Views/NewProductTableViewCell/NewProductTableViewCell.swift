//
//  NewProductTableViewCell.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import UIKit

class NewProductTableViewCell: UITableViewCell {

    static let identifier = "NewProductTableViewCell"
   
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
       super.init(style: style, reuseIdentifier: reuseIdentifier)
       setUI()
    backgroundColor = .orange

       
   }
   
   required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
}

extension NewProductTableViewCell {
   final private func setUI() {
       setBasic()
       setLayout()
   }
   final private func setBasic() {
       
   }
   final private func setLayout() {
       
   }
   
}
