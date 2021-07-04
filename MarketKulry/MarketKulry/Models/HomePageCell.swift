//
//  PageCell.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import SnapKit
import UIKit

class HomePageCell: UICollectionViewCell {
    // MARK: - Properties
    static let identifier = "HomePageCell"
    let kulryRecommandTableView = UITableView()
    let shoppingTableView = UITableView()
    let hotDealTableView = UITableView()
    lazy var newProductCollectionView = UICollectionView(frame: .zero, collectionViewLayout: newProductCollectionViewLayout)
    let newProductCollectionViewLayout = UICollectionViewFlowLayout()
    lazy var bestCollectionView = UICollectionView(frame: .zero, collectionViewLayout: bestCollectionViewLayout)
    let bestCollectionViewLayout = UICollectionViewFlowLayout()

    // MARK: - LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomePageCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case newProductCollectionView:
            guard let newProductCell =  collectionView.dequeueReusableCell(withReuseIdentifier: NewProductCollectionViewCell.identifier, for: indexPath) as? NewProductCollectionViewCell else { fatalError() }
            newProductCell.backgroundColor = .orange
            newProductCell.productImage.backgroundColor = .purple
            newProductCell.productLabel.backgroundColor = .black
            return newProductCell
        case bestCollectionView:
            guard let bestCell = collectionView.dequeueReusableCell(withReuseIdentifier: bestCollectionViewCell.identifier, for: indexPath) as? bestCollectionViewCell else { fatalError() }
            bestCell.backgroundColor = .yellow
            bestCell.bestImage.backgroundColor = .purple
            bestCell.bestLabel.backgroundColor = .black
            return bestCell
        default:
            return UICollectionViewCell()
        }
    }
    
    
}

extension HomePageCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch tableView {
        case kulryRecommandTableView:
            guard let kulryRecommandCell = tableView.dequeueReusableCell(withIdentifier: KulryRecommandTableViewCell.identifier, for: indexPath) as? KulryRecommandTableViewCell else { fatalError() }
            kulryRecommandCell.backgroundColor = .red
            switch indexPath {
            case [0, 1]:
                kulryRecommandCell.setSecondCell()
            default:
                break
            }
            return kulryRecommandCell
        case shoppingTableView:
            guard let shoppingCell = tableView.dequeueReusableCell(withIdentifier: ShoppingTableViewCell.identifier, for: indexPath) as? ShoppingTableViewCell else { fatalError() }
            shoppingCell.backgroundColor = .green
            return shoppingCell
        case hotDealTableView:
            guard let hotDealCell = tableView.dequeueReusableCell(withIdentifier: HotDealTableViewCell.identifier, for: indexPath) as? HotDealTableViewCell else { fatalError() }
            hotDealCell.hotDealImageView.backgroundColor = .systemPink
            return hotDealCell
        default:
           return UITableViewCell()
        }
    }
}

// MARK: - UI
extension HomePageCell {

    func setKulryRecommandTableView() {
        contentView.addSubview(kulryRecommandTableView)
        kulryRecommandTableView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
        kulryRecommandTableView.dataSource = self
        kulryRecommandTableView.register(KulryRecommandTableViewCell.self, forCellReuseIdentifier: KulryRecommandTableViewCell.identifier)
        kulryRecommandTableView.backgroundColor = .red
        kulryRecommandTableView.rowHeight = 220

    }
    func setNewProductCollectionView() {
        contentView.addSubview(newProductCollectionView)
        newProductCollectionView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
        newProductCollectionView.dataSource = self
        newProductCollectionView.register(NewProductCollectionViewCell.self, forCellWithReuseIdentifier: NewProductCollectionViewCell.identifier)
        newProductCollectionView.backgroundColor = .orange
        newProductCollectionViewLayout.scrollDirection = .vertical
        newProductCollectionViewLayout.minimumInteritemSpacing = 0
        newProductCollectionViewLayout.minimumLineSpacing = 10
        newProductCollectionViewLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        newProductCollectionViewLayout.itemSize = CGSize(width: (contentView.frame.width / 2) - 20, height: 270 )
    }
    func setBestTableView() {
        contentView.addSubview(bestCollectionView)
        bestCollectionView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
        bestCollectionView.dataSource = self
        bestCollectionView.register(bestCollectionViewCell.self, forCellWithReuseIdentifier: bestCollectionViewCell.identifier)
        bestCollectionView.backgroundColor = .yellow
        bestCollectionViewLayout.scrollDirection = .vertical
        bestCollectionViewLayout.minimumInteritemSpacing = 0
        bestCollectionViewLayout.minimumLineSpacing = 10
        bestCollectionViewLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        bestCollectionViewLayout.itemSize = CGSize(width: (contentView.frame.width / 2) - 20, height: 270 )
    }
    func setShoppingTableView() {
        contentView.addSubview(shoppingTableView)
        shoppingTableView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
        shoppingTableView.dataSource = self
        shoppingTableView.register(ShoppingTableViewCell.self, forCellReuseIdentifier: ShoppingTableViewCell.identifier)
        shoppingTableView.backgroundColor = .green
    }
    func setHotDealTableView() {
        contentView.addSubview(hotDealTableView)
        hotDealTableView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
        hotDealTableView.dataSource = self
        hotDealTableView.register(HotDealTableViewCell.self, forCellReuseIdentifier: HotDealTableViewCell.identifier)
        hotDealTableView.rowHeight = 200
        hotDealTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
    
}

