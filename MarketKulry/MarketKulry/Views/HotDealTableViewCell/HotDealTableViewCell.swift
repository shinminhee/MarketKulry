//
//  HotDealTableViewCell.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import UIKit

class HotDealTableViewCell: UITableViewCell {

    static let identifier = "HotDealTableViewCell"
    let hotDealImageView = UIImageView()
   
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
       super.init(style: style, reuseIdentifier: reuseIdentifier)
       setUI()
   }
   
   required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
}

extension HotDealTableViewCell {
   final private func setUI() {
       setBasic()
       setLayout()
   }
   final private func setBasic() {
    contentView.addSubview(hotDealImageView)
    hotDealImageView.snp.makeConstraints {
        $0.leading.trailing.equalToSuperview()
        $0.top.bottom.equalToSuperview().inset(10)
    }       
   }
   final private func setLayout() {
    
       
   }
   
}
