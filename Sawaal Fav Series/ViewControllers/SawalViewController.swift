//

//  Sawaal Fav Series
//
//  Created by Dinesh Sharma on 03/04/23.
//

import UIKit

class SawalViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    var questions: [Question]?
    
    var answerSelected = false
    var isCorrectAnswer = false

    var  points = 0
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionViewFlowLayout.itemSize = CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
        
        DispatchQueue.main.async {
            self.collectionView.delegate = self
            self.collectionView.dataSource = self
            self.collectionView.reloadData()
            
        }
        


//        viewModel.apiToGetQuestionData { [weak self] in
//            self?.quesitions = self?.viewModel.questionData?.data?.questions
//
//        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    
    @IBAction func exitBtnPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        if !answerSelected {
            // Show alert
            let alert = UIAlertController(title: "Select One Option", message: "Please select one option before moving to the next question.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            return
        }
        answerSelected = false
        if isCorrectAnswer {
            points += 1
        }

        print(index)
        if index<(self.questions?.count ?? 0) - 1 {
            index += 1
            collectionView.scrollToItem(at: IndexPath(row: index, section: 0), at: .right, animated: true)

        } else {
            // Move the user on the result controller
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController else {return}
            vc.result = points
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    

}

extension SawalViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questions?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SawaalCell", for: indexPath) as? SawalCollectionViewCell else {return SawalCollectionViewCell()}
        cell.optionA.layer.cornerRadius = 5
        cell.optionB.layer.cornerRadius = 5
        cell.optionC.layer.cornerRadius = 5
        cell.optionD.layer.cornerRadius = 5
        cell.imgFeedback.image = nil
        cell.setValues = questions?[indexPath.row]
        cell.selectedOption = { [weak self] isCorrect in
            self?.answerSelected = true
            self?.isCorrectAnswer = isCorrect
        }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}

