//
//  BaseController.swift
//  FalconStudio
//
//  Created by McBook on 26.11.2022.
//

import UIKit
import SwiftUI

class BaseController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
        configure()
    }
}
@objc extension BaseController {
    func addViews() {}
    func layoutViews() {}
    func configure() {
        view.backgroundColor = Resorces.Colors.background
    }
    func navBarRightButtonHandler() {
        print("Нажали на кнопку")
        //сюда добавить выбор города
        let helpView = HelpView()
        let helpVC = UIHostingController(rootView: helpView)
        self.present(helpVC, animated: true)
    }
}

extension BaseController {
    func addNavBarButton(with title: String) {
        let button = UIButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .disabled)
        button.titleLabel?.font = Resorces.Fonts.helveticaNeue(with: 16)
        button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
        button.setImage(Resorces.Images.Common.allCityButton, for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
    }
}
