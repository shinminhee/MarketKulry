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
        let label = UILabel()
    let kulryRecommandTableView = UITableView()
    let newProductTableView = UITableView()
    let bestTableView = UITableView()
    let shoppingTableView = UITableView()
    let hotDealTableView = UITableView()

    // MARK: - LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override var isSelected: Bool {
        didSet{
            print("Changed")
            self.label.textColor = isSelected ? .black : .lightGray
        }
    }
}

extension PageCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let kulryRecommandCell = tableView.dequeueReusableCell(withIdentifier: KulryRecommandTableViewCell.identifier, for: indexPath) as? KulryRecommandTableViewCell else { fatalError() }
        guard let newProductCell = tableView.dequeueReusableCell(withIdentifier: NewProductTableViewCell.identifier, for: indexPath) as? NewProductTableViewCell else { fatalError() }
        guard let bestCell = tableView.dequeueReusableCell(withIdentifier: BestTableViewCell.identifier, for: indexPath) as? BestTableViewCell else { fatalError() }
        guard let shoppingCell = tableView.dequeueReusableCell(withIdentifier: ShoppingTableViewCell.identifier, for: indexPath) as? ShoppingTableViewCell else { fatalError() }
        guard let hotDealCell = tableView.dequeueReusableCell(withIdentifier: HotDealTableViewCell.identifier, for: indexPath) as? HotDealTableViewCell else { fatalError() }
        
        switch tableView {
        case kulryRecommandTableView:
            return kulryRecommandCell
        case newProductTableView:
            return newProductCell
        case bestTableView:
            return bestCell
        case shoppingTableView:
            return shoppingCell
        case hotDealTableView:
            return hotDealCell
        default:
           return UITableViewCell()
        }
    }
}

// MARK: - UI
extension PageCell {
    final private func setUI() {
        setBasics()
        setLayout()
        setTableView()
    }
    final private func setBasics() {
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
    }
    final private func setLayout() {
        self.addSubview(label)
        self.backgroundColor = .gray
        label.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
    final private func setTableView() {
        [kulryRecommandTableView, newProductTableView, bestTableView, shoppingTableView, hotDealTableView].forEach {
            contentView.addSubview($0)
            $0.snp.makeConstraints {
                $0.leading.top.trailing.bottom.equalToSuperview()
            }
            $0.dataSource = self
        }
        kulryRecommandTableView.register(KulryRecommandTableViewCell.self, forCellReuseIdentifier: KulryRecommandTableViewCell.identifier)
        newProductTableView.register(NewProductTableViewCell.self, forCellReuseIdentifier: NewProductTableViewCell.identifier)
        bestTableView.register(BestTableViewCell.self, forCellReuseIdentifier: BestTableViewCell.identifier)
        shoppingTableView.register(ShoppingTableViewCell.self, forCellReuseIdentifier: ShoppingTableViewCell.identifier)
        hotDealTableView.register(HotDealTableViewCell.self, forCellReuseIdentifier: HotDealTableViewCell.identifier)
    }
}

