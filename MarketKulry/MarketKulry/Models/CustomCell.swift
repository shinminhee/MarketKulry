//
//  CustomCell.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import SnapKit
import UIKit

class CustomCell: UICollectionViewCell {
    // MARK: - Properties
    static let identifier = "CustomCell"
        let label = UILabel()
        let homeTableView = UITableView()

    
    // MARK: - LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override var isSelected: Bool {
        didSet {
            print("Changed")
            self.label.textColor = isSelected ? .appColor(.mainColor) : .lightGray
        }
    }
}

// MARK: - UI
extension CustomCell {
    final private func setUI() {
        setBasics()
        setLayout()
    }
    final private func setBasics() {
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .lightGray
    }
    final private func setLayout() {
        self.addSubview(label)
        label.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
    }
}
