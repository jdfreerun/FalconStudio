//
//  Resources.swift
//  FalconStudio
//
//  Created by McBook on 26.11.2022.
//

import UIKit

enum Resorces {
    enum Colors {
        static var baseColor = UIColor(hexString: "#8B2324")
        static var inactive = UIColor(hexString: "#808080")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var titleWhite = UIColor(hexString: "#FFFFFF")
        static var background = UIColor(hexString: "F8F9F9")
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
        enum Common {
            static var allCityButton = UIImage(named: "down")
        }
    }
    enum Fonts {
        static func helveticaNeue(with size: CGFloat) -> UIFont {
            UIFont(name: "HelveticaNeue-Medium", size: size) ?? UIFont()
        }
    }
}
