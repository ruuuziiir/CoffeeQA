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
    
    // 計算分數
    var score = 0

    @IBAction func selectOption(_ sender: UIButton) {
        
        let num = optionButtons.firstIndex(of: sender)!
        
        // 檢查自己選的選項是什麼
        print(optionButtons[num].currentTitle!)
        
        // 如果選對
        if optionButtons[num].currentTitle == questionsArray[count].answer {
            
            // 答對檢查用
            print("yes")
            
            // 分數增加、目前分數更新
            score += 10
            scoreLabel.text = String(score)
            
        } else {
            // 檢查用
            print("no")
        }
        // 題目數＋１、刷新當前畫面題目
        count += 1
        replaceButton()

    }


    // -------------------------------------------------------
    
    // 計算當前題目數
    var count = 0

    func replaceButton() {
        
        if count < 10 {
            
            // 設定目前題號為 count + 1
            currentQuestionLabel.text = "\(count + 1)"
            questionLabel.text = questionsArray[count].question
            
            // 選項 1 & 2 一定會有，不用設條件
            optionButtons[0].setTitle(questionsArray[count].option0, for: .normal)
            optionButtons[1].setTitle(questionsArray[count].option1, for: .normal)
            
            // 判斷該題選項數量
            // 如果沒有第三個選項（option2）
            if questionsArray[count].option2 == nil {
                
                // 不能按（isEnabled = false）不透明度（.alpha = 0）
                optionButtons[2].isEnabled = false
                optionButtons[2].alpha = 0
                
            } else {
                
                // 如果有
                // 設定選項按鈕文字（怕前一個題目只有兩個選項，如果不在 else 裡面設定就會維持只有兩個選項的狀態）
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
    
    
    // 傳送分數至 ResultViewController
    // 從 Segue 拉 Action
    @IBSegueAction func jumpToResult(_ coder: NSCoder) -> ResultViewController? {
        
        // 讓 controller = 要跳去的 Controller 頁面
        let controller = ResultViewController(coder: coder)
        
        // 設定要傳送過去的資料為字串的 score
        controller?.finalScore = String(score)
        return controller
    }
    

}
