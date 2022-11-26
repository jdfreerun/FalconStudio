//
//  Resources.swift
//  FalconStudio
//
//  Created by McBook on 26.11.2022.
//

import UIKit

enum Resorces {
    enum Colors {
        static var active = UIColor(hexString: "#FF0000")
        static var inactive = UIColor(hexString: "#808080")
        static var separator = UIColor(hexString: "#E8ECEF")
    }
    enum Strings {
        enum TabBar {
            static var main = "Главная"
            static var products = "Продукция"
            static var bid = "Заявка"
            static var menu = "Меню"
        }
    }
    enum Images {
        enum TabBar {
            static var main = UIImage(named: "main")
            static var products = UIImage(named: "products")
            static var bid = UIImage(named: "bid")
            static var menu = UIImage(named: "menu")
        }
    }
}
