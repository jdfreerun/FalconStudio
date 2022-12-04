//
//  CategoryView.swift
//  FalconStudio
//
//  Created by McBook on 28.11.2022.
//

import UIKit

class CategoryStackView: UIView {
    var dataSource: [String] = [] {
        didSet {
            renderUI()
        }
    }
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        return stackView
    }()
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)
        self.addSubview(scrollView)
        
        var scrollViewAnchor = [NSLayoutConstraint]()
        scrollViewAnchor.append(scrollView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0))
        scrollViewAnchor.append(scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0))
        scrollViewAnchor.append(scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0))
        scrollViewAnchor.append(scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0))
        NSLayoutConstraint.activate(scrollViewAnchor)
        
        var stackViewAnchor = [NSLayoutConstraint]()
        stackViewAnchor.append(stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0))
        stackViewAnchor.append(stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor))
        stackViewAnchor.append(stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor))
        stackViewAnchor.append(stackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor))
        NSLayoutConstraint.activate(stackViewAnchor)
    }
    
    private func renderUI() {
        for (index, item) in dataSource.enumerated() {
            stackView.addArrangedSubview(createTokenViews(index: index, item: item))
        }
    }
    
    private func createTokenViews(index: Int, item: String) -> UIView {
        let view = UIView()
        view.backgroundColor = Resorces.Colors.baseColor
        view.layer.cornerRadius = 6
        view.clipsToBounds = true
        
        let textLabel = UILabel()   
        textLabel.text = item
        textLabel.textColor = Resorces.Colors.titleWhite
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textLabel)
        
        let goToCategoryButton = UIButton(type: .custom)
        goToCategoryButton.tag = index
        //goToCategoryButton.setImage(UIImage(named: "main"), for: .normal)
        goToCategoryButton.addTarget(self, action: #selector(goToCategoryAction), for: .touchUpInside)
        goToCategoryButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(goToCategoryButton)
        
        var viewAnchor = [NSLayoutConstraint]()
        viewAnchor.append(textLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 0))
        viewAnchor.append(textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10))
        viewAnchor.append(textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10))
        viewAnchor.append(textLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0))
        NSLayoutConstraint.activate(viewAnchor)
        
        var goToCategoryAnchor = [NSLayoutConstraint]()
        goToCategoryAnchor.append(goToCategoryButton.leadingAnchor.constraint(equalTo: textLabel.leadingAnchor, constant: 0))
        goToCategoryAnchor.append(goToCategoryButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0))
        goToCategoryAnchor.append(goToCategoryButton.heightAnchor.constraint(equalTo: view.heightAnchor))
        goToCategoryAnchor.append(goToCategoryButton.widthAnchor.constraint(equalTo: goToCategoryButton.widthAnchor))
        goToCategoryAnchor.append(goToCategoryButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0))
        NSLayoutConstraint.activate(goToCategoryAnchor)
        
        return view
    }
    @objc func goToCategoryAction(sender: UIButton) {
        //тут будет переход к категории
        print("Tap")
    }
}
