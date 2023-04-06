//
//  VampireReadyViewController.swift
//  Sawaal Fav Series
//
//  Created by Dinesh Sharma on 06/04/23.
//

import UIKit

class VampireReadyViewController: UIViewController {
    
    

    @IBOutlet weak var topicBtn: UIButton!
    @IBOutlet weak var playVampireBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func playBtnTapped(_ sender: Any) {
        guard let quizVC = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as? SawalViewController else {
            return
        }
        quizVC.questions = questions.TVD
        navigationController?.pushViewController(quizVC, animated: true)
    }
    
    
    @IBAction func topicBtnTapped(_ sender: Any) {
        
    }
    
    


}
