//
//  NewProductTableViewCell.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import UIKit

class NewProductCollectionViewCell: UICollectionViewCell {

    static let identifier = "NewProductCollectionViewCell"
    let productImage = UIImageView()
    let productLabel = UILabel()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        
    }
   
   required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
}

extension NewProductCollectionViewCell {
   final private func setUI() {
       setBasic()
       setLayout()
   }
   final private func setBasic() {
       
   }
   final private func setLayout() {
    [productImage, productLabel].forEach {
        contentView.addSubview($0)
    }
    productImage.snp.makeConstraints {
        $0.top.leading.trailing.equalToSuperview()
        $0.height.equalTo(170)
    }
    productLabel.snp.makeConstraints {
        $0.top.equalTo(productImage.snp.bottom)
        $0.leading.trailing.bottom.equalToSuperview()
    }
       
   }
   
}
