//
//  WpDetailViewController.swift
//  Sawaal Fav Series
//
//  Created by Dinesh Sharma on 06/04/23.
//

import UIKit

class WpDetailViewController: UIViewController {
    
    var img1 : UIImage!
    
    @IBOutlet weak var btnShare: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Share Wallpaper"
        // Do any additional setup after loading the view.
        
        self.btnShare.addTarget(self, action: #selector(onClickShare), for: .touchUpInside)
        
        
        self.imgView.image = img1
    }
    @objc func onClickShare() {
        
        let img =  img1
        
        let vc = UIActivityViewController(activityItems: [img], applicationActivities: nil)
        if UIDevice.current.userInterfaceIdiom == .pad {
            if let popoverController = vc.popoverPresentationController {
                popoverController.sourceView = self.view
            }
        }
        present(vc, animated: true)
    }
    
}
    
    
