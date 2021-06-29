//
//  SceneDelegate.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let homeVC = HomeViewController()
        let recommandVC = RecommandViewController()
        let categoryVC = CategoryViewController()
        let searchVC = SearchViewController()
        let myKulryVC = MyKulryViewController()
       
        UINavigationBar.setTransparentTabbar()
        UINavigationBar.setTransparentNavigation()
        
        
        homeVC.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house"), tag: 1)
        recommandVC.tabBarItem = UITabBarItem(title: "추천", image: UIImage(systemName: "star"), tag: 2)
        categoryVC.tabBarItem = UITabBarItem(title: "카테고리", image: UIImage(systemName: "line.horizontal.3"), tag: 3)
        searchVC.tabBarItem = UITabBarItem(title: "검색", image: UIImage(systemName: "magnifyingglass.circle"), tag: 4)
        myKulryVC.tabBarItem = UITabBarItem(title: "마이컬리", image: UIImage(systemName: "person"), tag: 5)
        
        //        var tabBarController = self.window!.rootViewController as! UITabBarController
        //        let tabBar = tabBarController.tabBar as UITabBar
        //
        //        let tabBarItem1 = tabBar.items![0] as UITabBarItem
        //        let tabBarItem2 = tabBar.items![1] as UITabBarItem
        //        let tabBarItem3 = tabBar.items![2] as UITabBarItem
        //        let tabBarItem4 = tabBar.items![3] as UITabBarItem
        //        let tabBarItem5 = tabBar.items![4] as UITabBarItem
        //
        //
        //        tabBarItem1.selectedImage = UIImage(systemName: "house.fill")
        //        tabBarItem2.selectedImage = UIImage(systemName: "star.fill")
        //        tabBarItem3.selectedImage = UIImage(systemName: "line.horizontal.3.circle")
        //        tabBarItem4.selectedImage = UIImage(systemName: "magnifyingglass.circle.fill")
        //        tabBarItem5.selectedImage = UIImage(systemName: "person.fill")
        
        let tabBarController = UITabBarController()
        let homeNavigation = UINavigationController(rootViewController: homeVC)
        let recommandNavigation = UINavigationController(rootViewController: recommandVC)
        let categoryNavigation = UINavigationController(rootViewController: categoryVC)
        let searchNavigation = UINavigationController(rootViewController: searchVC)
        let myKulryNavigation = UINavigationController(rootViewController: myKulryVC)
       
        
        tabBarController.viewControllers
            = [homeNavigation, recommandNavigation, categoryNavigation, searchNavigation, myKulryNavigation]
        window?.rootViewController = tabBarController
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        
        //        line.horizontal.3.circle
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
}

extension UINavigationBar {
    static func setTransparentTabbar() {
        UITabBar.appearance().tintColor = UIColor.appColor(.mainColor)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.appColor(.mainColor)], for: .normal)
    }
    static func setTransparentNavigation() {
//        UINavigationBar.appearance().barTintColor = UIColor.appColor(.mainColor)
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
    }
}

extension UINavigationBar {
    @objc
    func handleBarButton(_ sender: UIBarButtonItem) {
    }
}






