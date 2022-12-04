//
//  NavigationBar.swift
//  FalconStudio
//
//  Created by McBook on 26.11.2022.
//

import UIKit

final class NavBarController: UINavigationController {
    override func viewDidLoad() {
         super.viewDidLoad()
        configure()
    }
    private func configure() {
        view.backgroundColor = Resorces.Colors.baseColor
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resorces.Colors.titleWhite,
            .font: Resorces.Fonts.helveticaNeue(with: 20)
        ]
        navigationBar.addBottomBorder(with: Resorces.Colors.separator, height: 1)
    }
}
