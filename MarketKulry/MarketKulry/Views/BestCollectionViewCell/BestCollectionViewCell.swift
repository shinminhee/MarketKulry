//
//  BestTableViewCell.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import UIKit

class bestCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "bestCollectionViewCell"
    let bestImage = UIImageView()
    let bestLabel = UILabel()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        
    }
   
   required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
}

extension bestCollectionViewCell {
   final private func setUI() {
       setBasic()
       setLayout()
   }
   final private func setBasic() {
       
   }
   final private func setLayout() {
    [bestImage, bestLabel].forEach {
        contentView.addSubview($0)
    }
    bestImage.snp.makeConstraints {
        $0.top.leading.trailing.equalToSuperview()
        $0.height.equalTo(170)
    }
    bestLabel.snp.makeConstraints {
        $0.top.equalTo(bestImage.snp.bottom)
        $0.leading.trailing.bottom.equalToSuperview()
    }
       
   }
   
}
