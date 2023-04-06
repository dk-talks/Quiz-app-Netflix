//
//  StrangerReadyViewController.swift
//  Sawaal Fav Series
//
//  Created by Dinesh Sharma on 06/04/23.
//

import UIKit

class StrangerReadyViewController: UIViewController {
    
    
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var topicBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func playBtnTapped(_ sender: Any) {
        guard let quizVC = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as? SawalViewController else {
            return
        }
        quizVC.questions = questions.ST
        navigationController?.pushViewController(quizVC, animated: true)
    }
    
    @IBAction func topicBtnTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
