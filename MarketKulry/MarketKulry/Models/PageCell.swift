//
//  PageCell.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import SnapKit
import UIKit

class PageCell: UICollectionViewCell {
    // MARK: - Properties
    static let identifier = "PageCell"
    let kulryRecommandTableView = UITableView()
    let newProductTableView = UITableView()
    let bestTableView = UITableView()
    let shoppingTableView = UITableView()
    let hotDealTableView = UITableView()

    // MARK: - LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PageCell: UITableViewDataSource {
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
        case newProductTableView:
            guard let newProductCell = tableView.dequeueReusableCell(withIdentifier: NewProductTableViewCell.identifier, for: indexPath) as? NewProductTableViewCell else { fatalError() }
            newProductCell.backgroundColor = .orange
            return newProductCell
        case bestTableView:
            guard let bestCell = tableView.dequeueReusableCell(withIdentifier: BestTableViewCell.identifier, for: indexPath) as? BestTableViewCell else { fatalError() }
            bestCell.backgroundColor = .yellow
            return bestCell
        case shoppingTableView:
            guard let shoppingCell = tableView.dequeueReusableCell(withIdentifier: ShoppingTableViewCell.identifier, for: indexPath) as? ShoppingTableViewCell else { fatalError() }
            shoppingCell.backgroundColor = .green
            return shoppingCell
        case hotDealTableView:
            guard let hotDealCell = tableView.dequeueReusableCell(withIdentifier: HotDealTableViewCell.identifier, for: indexPath) as? HotDealTableViewCell else { fatalError() }
            hotDealCell.backgroundColor = .blue
            return hotDealCell
        default:
           return UITableViewCell()
        }
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        switch tableView {
//        case kulryRecommandTableView:
//            switch indexPath {
//            case [0, 5]:
//                return 150
//                print(123)
//            default:
//                return 150
//            }
//        case newProductTableView:
//            return 140
//        case bestTableView:
//            return 140
//        case shoppingTableView:
//            return 140
//        case hotDealTableView:
//            return 140
//
//        default:
//            return 200
//        }
//    }
}

// MARK: - UI
extension PageCell {
//    final private func setUI() {
//        setBasics()
//        setLayout()
//    }
//    final private func setBasics() {
//
//    }
//    final private func setLayout() {
//
//    }
    func setKulryRecommandTableView() {
        contentView.addSubview(kulryRecommandTableView)
        kulryRecommandTableView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
        kulryRecommandTableView.dataSource = self
        kulryRecommandTableView.register(KulryRecommandTableViewCell.self, forCellReuseIdentifier: KulryRecommandTableViewCell.identifier)
        kulryRecommandTableView.backgroundColor = .red
        kulryRecommandTableView.rowHeight = 300

    }
    func setNewProductTableView() {
        contentView.addSubview(newProductTableView)
        newProductTableView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
        newProductTableView.dataSource = self
        newProductTableView.register(NewProductTableViewCell.self, forCellReuseIdentifier: NewProductTableViewCell.identifier)
        newProductTableView.backgroundColor = .orange
    }
    func setBestTableView() {
        contentView.addSubview(bestTableView)
        bestTableView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
        bestTableView.dataSource = self
        bestTableView.register(BestTableViewCell.self, forCellReuseIdentifier: BestTableViewCell.identifier)
        bestTableView.backgroundColor = .yellow
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
        hotDealTableView.backgroundColor = .blue
    }
}

