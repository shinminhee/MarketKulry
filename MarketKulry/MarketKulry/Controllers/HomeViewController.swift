//
//  HomeViewController.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    let markBackbarbutton = UIBarButtonItem(image: (UIImage(systemName: "mappin.and.ellipse")?.withTintColor(.white, renderingMode: .alwaysOriginal)), style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleBarButton(_:)))
    let cartBackbarbutton = UIBarButtonItem(image: (UIImage(systemName: "cart")?.withTintColor(.white, renderingMode: .alwaysOriginal)), style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleBarButton(_:)))
    let logo = UIImage(named: "logo")
    lazy var pageCollectionView = UICollectionView(frame: .zero, collectionViewLayout: pageCollectionViewLayout)
    var pageCollectionViewLayout = UICollectionViewFlowLayout()
    var customMenuBar = CustomMenuBar()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItems = [cartBackbarbutton, markBackbarbutton]
        let imageView = UIImageView(image: logo)
        self.navigationItem.titleView = imageView
        view.backgroundColor = UIColor.appColor(.mainColor)
        setUI()

    }
}


extension HomeViewController {
    @objc
    func handleBarButton(_ sender: UIBarButtonItem) {
    }
}

extension HomeViewController: CustomMenuBarDelegate {
    func customMenuBar(scrollTo index: Int) {
        let indexPath = IndexPath(row: index, section: 0)
        self.pageCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = pageCollectionView.dequeueReusableCell(withReuseIdentifier: PageCell.identifier, for: indexPath) as! PageCell
//        cell.label.text = "\(indexPath.row + 1)번째 뷰"
        print(indexPath)
        switch indexPath {
        case [0, 0]:
            cell.kulryRecommandTableView.backgroundColor = .red
        case [0, 1]:
            cell.newProductTableView.backgroundColor = .orange
        case [0, 2]:
            cell.bestTableView.backgroundColor = .yellow
        case [0, 3]:
            cell.shoppingTableView.backgroundColor = .green
        case [0, 4]:
            cell.hotDealTableView.backgroundColor = .blue
        default:
            break
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CustomMenuBar.homeTabBarText.count
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        customMenuBar.indicatorViewLeadingConstraint.constant = scrollView.contentOffset.x / CGFloat(CustomMenuBar.homeTabBarText.count)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let itemAt = Int(targetContentOffset.pointee.x / self.view.frame.width)
        let indexPath = IndexPath(item: itemAt, section: 0)
        customMenuBar.customTabBarCollectionView.selectItem(at: indexPath, animated: true, scrollPosition: [])
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: pageCollectionView.frame.width, height: pageCollectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

extension HomeViewController {
    final private func setUI() {
        setLayout()
        setBasic()
        setNavigation()
    }
    final private func setLayout() {
        view.addSubview(customMenuBar)
        customMenuBar.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.height.equalTo(60)
        }
        view.addSubview(pageCollectionView)
        pageCollectionView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalTo(view.snp.bottom)
            $0.top.equalTo(customMenuBar.snp.bottom)
        }
    }
    final private func setBasic() {
        customMenuBar.delegate = self
        pageCollectionViewLayout.scrollDirection = .horizontal
        pageCollectionView.delegate = self
        pageCollectionView.dataSource = self
        pageCollectionView.backgroundColor = .gray
        pageCollectionView.showsHorizontalScrollIndicator = false
        pageCollectionView.isPagingEnabled = true
        pageCollectionView.register(PageCell.self, forCellWithReuseIdentifier: PageCell.identifier)
        
    }
    final private func setNavigation() {
        
    }
}
