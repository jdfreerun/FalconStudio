//
//  ProductsViewController.swift
//  FalconStudio
//
//  Created by McBook on 26.11.2022.
//

import UIKit

class ProductsViewController: BaseController {
    
    override func viewDidLayoutSubviews() {
        super.viewDidLoad()
        title = Resorces.Strings.TabBar.products
        navigationController?.navigationItem.title = Resorces.Strings.TabBar.products
        
    }
}
