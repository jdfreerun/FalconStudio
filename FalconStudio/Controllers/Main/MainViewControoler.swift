//
//  ViewController.swift
//  FalconStudio
//
//  Created by McBook on 10.11.2022.
//

import UIKit
import FirebaseFirestore
import SnapKit

class MainViewControoler: BaseController {
    //    let db = Firestore.firestore()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarButton(with: "Выбран город: Санкт-Петербург")
        
        //        let superview = self.view
        //        superview?.backgroundColor = UIColor.white
        //        let navbar = UIView()
        //        superview?.addSubview(navbar)
        //        navbar.backgroundColor = UIColor(hexString: "#FF0000")
        //        navbar.snp.makeConstraints { (make) -> Void in
        //            make.height.equalTo(64)
        //            make.width.equalTo(superview!)
        //        }
        
        
        
        // Example - get collection in my Firebase.Firestore
        //        let collection = db.collection("catalog")
        //        collection.getDocuments { querySnapshot, error in
        //            if let error = error {
        //                print(error.localizedDescription)
        //            }
        //            guard let querySnapshot = querySnapshot else {
        //                return
        //            }
        //            querySnapshot.documents.forEach { catalog in
        //                print(catalog.data())
        //            }
        //        }
    }
}
    
