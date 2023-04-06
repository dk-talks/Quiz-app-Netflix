//
//  MoneyHeistReadyViewController.swift
//  Sawaal Fav Series
//
//  Created by Dinesh Sharma on 06/04/23.
//

import UIKit

class MoneyHeistReadyViewController: UIViewController {
    
    
    @IBOutlet weak var playMoneyHeistBTN: UIButton!
    
    @IBOutlet weak var topicBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func play(_ sender: Any) {
        guard let quizVC = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as? SawalViewController else {
            return
        }
        quizVC.questions = questions.MH
        navigationController?.pushViewController(quizVC, animated: true)
    }
    
    @IBAction func topicBtnTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
