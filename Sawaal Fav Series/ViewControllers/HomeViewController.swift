//
//  ViewController.swift
//  Sawaal Fav Series
//
//  Created by Dinesh Sharma on 03/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    
    @IBOutlet weak var btnMoney: UIButton!
    
    @IBOutlet weak var btnVampire: UIButton!
    
    @IBOutlet weak var btnStranger: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMoney.imageView?.contentMode = .scaleAspectFit
        btnVampire.imageView?.contentMode = .scaleAspectFit
        btnStranger.imageView?.contentMode = .scaleAspectFit
    }
    
}

