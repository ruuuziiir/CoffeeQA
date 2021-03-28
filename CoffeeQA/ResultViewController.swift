//
//  ResultViewController.swift
//  CoffeeQA
//
//  Created by 7 on 2021/3/28.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    
    var finalScore: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finalScoreLabel.text = finalScore
    }
    
    @IBAction func jump(_ sender: Any) {
        
        performSegue(withIdentifier: "backToHome", sender: nil)
    }
    

}
