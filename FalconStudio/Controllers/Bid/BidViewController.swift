//
//  BidViewController.swift
//  FalconStudio
//
//  Created by McBook on 26.11.2022.
//

import UIKit

class BidViewController: BaseController {
    
    override func viewDidLayoutSubviews() {
        super.viewDidLoad()
        title = Resorces.Strings.TabBar.bid
        navigationController?.navigationItem.title = Resorces.Strings.TabBar.bid
        
    }
}
