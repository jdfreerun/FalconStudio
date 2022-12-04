//
//  ViewController.swift
//  FalconStudio
//
//  Created by McBook on 10.11.2022.
//

import UIKit
import FirebaseFirestore
import SnapKit

class MainViewController: BaseController {
    let db = Firestore.firestore()
    let categoryDataSource = ["Распродажа", "Гостиная", "Спальня", "Детская", "Прихожая", "Диваны", "Все категории"]
    private let categoryStackView = CategoryStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarButton(with: "Выбран город: Санкт-Петербург")
        categoryStackView.dataSource = categoryDataSource
        
// Example - get collection in my Firebase.Firestore
//                let collection = db.collection("catalog")
//                collection.getDocuments { querySnapshot, error in
//                    if let error = error {
//                        print(error.localizedDescription)
//                    }
//                    guard let querySnapshot = querySnapshot else {
//                        return
//                    }
//                    querySnapshot.documents.forEach { catalog in
//                        print(catalog.data())
//                    }
//                }
    }
}
extension MainViewController {
    override func addViews() {
        super.addViews()
        view.addSubview(categoryStackView)
    }
    override func layoutViews() {
        super.layoutViews()

        NSLayoutConstraint.activate([
            categoryStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            categoryStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            categoryStackView.widthAnchor.constraint(equalTo: view.widthAnchor),
            categoryStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
        ])
    }
    override func configure() {
        super.configure()
        categoryStackView.translatesAutoresizingMaskIntoConstraints = false
    }
}

    
