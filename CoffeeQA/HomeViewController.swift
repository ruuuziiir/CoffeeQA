//
//  HomeViewController.swift
//  CoffeeQA
//
//  Created by 7 on 2021/3/27.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func startTest(_ sender: Any) {
        
        performSegue(withIdentifier: "toQuestion", sender: nil)
    }
    

}
