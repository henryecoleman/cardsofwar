//
//  ViewController.swift
//  WarCardGame
//
//  Created by H Coleman on 27/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    

    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomise some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
       
        // Update image viewa
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            
            // Left Side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }
        else if leftNumber < rightNumber {
            // Right Side Wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        }
        
    }
    
    


}

