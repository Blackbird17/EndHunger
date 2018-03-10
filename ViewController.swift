

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
        updateUI()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else {
            pickedAnswer = false
        }
        checkAnswer()
        
        questionNumber += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        
        scoreLabel.text = String(score) + ("/ " + String(questionNumber * 100))
        progressLabel.text = String(questionNumber + 1) + " / 15"
        progressBar.frame.size.width = (view.frame.size.width / 15) * CGFloat(questionNumber+1)
    }
    

    func nextQuestion() {
        if questionNumber <= 14 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        }
        else {
            let alert = UIAlertController(title: "So lets go do something about it", message: "Start Over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
                self.updateUI()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if (correctAnswer == pickedAnswer){
            ProgressHUD.showSuccess("Correct")
            score += 100
        }
        else {
            ProgressHUD.showError("Wrong")
            
        }
        
    }
    
    
    func startOver() {
        questionNumber = 0
        nextQuestion()
        score = 0
    }
    

    
}
