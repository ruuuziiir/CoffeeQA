//
//  QuestionViewController.swift
//  CoffeeQA
//
//  Created by 7 on 2021/3/27.
//

import UIKit

class QuestionViewController: UIViewController {

    
    
    @IBOutlet weak var currentQuestionLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var optionButtons: [UIButton]!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionsArray.shuffle()
        
        replaceButton()
        
    }
    
    // -------------------------------------------------------
    
    var score = 0
    var count = 0
    
    // -------------------------------------------------------


    @IBAction func selectOption(_ sender: UIButton) {
        
        let num = optionButtons.firstIndex(of: sender)!
        print(optionButtons[num].currentTitle!)
        
        if optionButtons[num].currentTitle == questionsArray[count].answer {
            print("yes")
            score += 10
            scoreLabel.text = String(score)
        } else {
            print("no")
        }
        
        count += 1
        replaceButton()

    }


    // -------------------------------------------------------

    func replaceButton() {
        
        if count < 10 {
            
            currentQuestionLabel.text = "\(count + 1)"
        
            questionLabel.text = questionsArray[count].question
            
            optionButtons[0].setTitle(questionsArray[count].option0, for: .normal)
            optionButtons[1].setTitle(questionsArray[count].option1, for: .normal)
            
            if questionsArray[count].option2 == nil {
                optionButtons[2].isEnabled = false
                optionButtons[2].alpha = 0
            } else {
                optionButtons[2].setTitle(questionsArray[count].option2, for: .normal)
                optionButtons[2].isEnabled = true
                optionButtons[2].alpha = 100
            }
            
            if questionsArray[count].option3 == nil {
                optionButtons[3].isEnabled = false
                optionButtons[3].alpha = 0
            } else {
                optionButtons[3].setTitle(questionsArray[count].option3, for: .normal)
                optionButtons[3].isEnabled = true
                optionButtons[3].alpha = 100
            }
            
            if questionsArray[count].option4 == nil {
                optionButtons[4].isEnabled = false
                optionButtons[4].alpha = 0
            } else {
                optionButtons[4].setTitle(questionsArray[count].option4, for: .normal)
                optionButtons[4].isEnabled = true
                optionButtons[4].alpha = 100
            }
        } else {
            performSegue(withIdentifier: "toResult", sender: nil)
        }
        
    }
    // -------------------------------------------------------

    @IBSegueAction func jumpToResult(_ coder: NSCoder) -> ResultViewController? {
        
        let controller = ResultViewController(coder: coder)
        let final = scoreLabel.text
        controller?.finalScore = final
        return controller
    }
    

}
