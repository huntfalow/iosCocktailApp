//
//  ViewController.swift
//  cocktailApp
//
//  Created by Vincent on 24/08/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    let cocktailInfoController = CocktailInfoController()
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var naamLabel: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cocktailInfoController.fetchPhotoInfo { (WebsiteDescription) in
       print("test")
        }
   
}
}
