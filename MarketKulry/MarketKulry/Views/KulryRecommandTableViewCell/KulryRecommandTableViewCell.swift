//
//  KulryRecommandTableViewCell.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import UIKit

class KulryRecommandTableViewCell: UITableViewCell {

    static let identifier = "KulryRecommandTableViewCell"
    lazy var productCollectionView = UICollectionView(frame: .zero, collectionViewLayout: productCollectionViewLayout)
    let productCollectionViewLayout = UICollectionViewFlowLayout()
    let type = ["종합리모델링", "도배", "시트필름", "욕실/타일", "주방", "바닥재", "창호/샷시", "도어/문틀", "페인트", "커텐블라인드", "목공", "전기/조명", "설비"]
    let titleLabel = UILabel()


   
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
       super.init(style: style, reuseIdentifier: reuseIdentifier)
       setUI()
    contentView.backgroundColor = .red
       
   }
   
   required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
}

extension KulryRecommandTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return type.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: KulryRecommandCollectionViewCell.identifier, for: indexPath) as? KulryRecommandCollectionViewCell else { fatalError() }
        cell.menuImage.backgroundColor = .black
        cell.menuLabel.backgroundColor = . blue
        return cell
    }
}

extension KulryRecommandTableViewCell {
   final private func setUI() {
       setBasic()
       setLayout()
   }
   final private func setBasic() {
       
   }
   final private func setLayout() {
       
   }
    func setSecondCell() {
        [titleLabel, productCollectionView].forEach {
            contentView.addSubview($0)
        }
        contentView.backgroundColor = .green
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.leading.trailing.equalToSuperview().inset(10)
            $0.height.equalTo(50)
        }
        titleLabel.backgroundColor = .blue
        productCollectionView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom)
            $0.leading.trailing.bottom.equalToSuperview()
        }
        titleLabel.text = "이 상품 어때요?"
        titleLabel.font = UIFont.systemFont(ofSize: 25)
        productCollectionViewLayout.scrollDirection = .horizontal
        productCollectionViewLayout.minimumInteritemSpacing = 0
        productCollectionViewLayout.minimumLineSpacing = 10
        productCollectionViewLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        productCollectionViewLayout.itemSize = CGSize(width: 140, height: 125)

        productCollectionView.register(KulryRecommandCollectionViewCell.self, forCellWithReuseIdentifier: KulryRecommandCollectionViewCell.identifier)
        productCollectionView.dataSource = self
        productCollectionView.backgroundColor = .yellow
        productCollectionView.showsHorizontalScrollIndicator = false
    }
}
