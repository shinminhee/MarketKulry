//
//  KulryRecommandCollectionViewCell.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import UIKit

class KulryRecommandCollectionViewCell: UICollectionViewCell {
    static let identifier = "KulryRecommandCollectionViewCell"
    let menuImage = UIImageView()
    let menuLabel = UILabel()
    
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
        [menuImage, menuLabel].forEach {
            contentView.addSubview($0)
        }
        menuImage.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(150)
        }
        menuLabel.snp.makeConstraints {
            $0.centerX.equalTo(menuImage)
            $0.top.equalTo(menuImage.snp.bottom).offset(10)
            $0.height.equalTo(20)
        }
    }
    
}
