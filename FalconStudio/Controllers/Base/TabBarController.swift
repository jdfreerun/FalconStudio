//
//  TabBarController.swift
//  FalconStudio
//
//  Created by McBook on 26.11.2022.
//

import UIKit

enum Tabs: Int {
    case main
    case product
    case bid
    case menu
}

final class TabBarController: UITabBarController{
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resorces.Colors.baseColor
        tabBar.barTintColor = Resorces.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = Resorces.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let mainController = MainViewController()
        let productController = ProductsViewController()
        let bidController = BidViewController()
        let menuController = MenuViewController()
        
        let mainNavigation = NavBarController(rootViewController: mainController)
        let productNavigation = NavBarController(rootViewController: productController)
        let bidNavigation = NavBarController(rootViewController: bidController)
        let menuNavigation = NavBarController(rootViewController: menuController)
        
        mainNavigation.tabBarItem = UITabBarItem(title: Resorces.Strings.TabBar.main,
                                                 image: Resorces.Images.TabBar.main,
                                                 tag: Tabs.main.rawValue)
        productNavigation.tabBarItem = UITabBarItem(title: Resorces.Strings.TabBar.products,
                                                 image: Resorces.Images.TabBar.products,
                                                 tag: Tabs.product.rawValue)
        bidNavigation.tabBarItem = UITabBarItem(title: Resorces.Strings.TabBar.bid,
                                                 image: Resorces.Images.TabBar.bid,
                                                 tag: Tabs.bid.rawValue)
        menuNavigation.tabBarItem = UITabBarItem(title: Resorces.Strings.TabBar.menu,
                                                 image: Resorces.Images.TabBar.menu,
                                                 tag: Tabs.menu.rawValue)
        
        setViewControllers([
            mainNavigation,
            productNavigation,
            bidNavigation,
            menuNavigation
        ], animated: false)
    }
}
