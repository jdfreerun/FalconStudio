//
//  ViewController.swift
//  FalconStudio
//
//  Created by McBook on 10.11.2022.
//

import UIKit
import FirebaseFirestore

class ViewController: UIViewController {
    let db = Firestore.firestore()

    override func viewDidLoad() {
        super.viewDidLoad()
        let collection = db.collection("catalog")
        collection.getDocuments { querySnapshot, error in
            if let error = error {
                print(error.localizedDescription)
            }
            guard let querySnapshot = querySnapshot else {
                return
            }
            querySnapshot.documents.forEach { catalog in
                print(catalog.data())
            }
        }
    }


}

