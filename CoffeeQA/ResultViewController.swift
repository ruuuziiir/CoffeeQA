//
//  ResultViewController.swift
//  CoffeeQA
//
//  Created by 7 on 2021/3/28.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    
    // 要在目的地先宣告變數，才能將前一個頁面的值傳入
    var finalScore: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finalScoreLabel.text = finalScore
        
    }
    
    @IBAction func jump(_ sender: Any) {
        
        performSegue(withIdentifier: "backToHome", sender: nil)
    }
    

}
