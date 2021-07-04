//
//  NewProductCollectionViewCell.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/07/02.
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
        fatalError()
    }
    
    func setUI() {
        setBasic()
        setLayout()
    }
    func setBasic() {
        
    }
    func setLayout() {
        [productImage, productLabel].forEach {
            contentView.addSubview($0)
        }
        productImage.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(150)
        }
        productLabel.snp.makeConstraints {
            $0.centerX.equalTo(productImage)
            $0.top.equalTo(productImage.snp.bottom).offset(10)
            $0.height.equalTo(20)
        }
    }
}
