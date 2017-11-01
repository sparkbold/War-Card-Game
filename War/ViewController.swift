//
//  ViewController.swift
//  War
//
//  Created by Sparkbold on 10/31/17.
//  Copyright © 2017 Sparkbold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView! //! make var with value in it
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    
    let cardName = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king","ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dealTapped(sender:UIButton) {
        
        //randomize left number from 0 to 12
        let leftNumber = Int(arc4random_uniform(13))
        
        //randomize left image
        leftImageView.image = UIImage(named:cardName[leftNumber])
        
        //randomize right number from 0 to 12
        let rightNumber = Int(arc4random_uniform(13))
        
        //randomize right image
        rightImageView.image = UIImage(named:cardName[rightNumber])
        
        //compare the card number
        
        if leftNumber > rightNumber {
            //leftCardWin
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }
        
        else if leftNumber == rightNumber {
            //ItATie
        }
        
        else {
            //rightCardWin
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        }
    }


    
}

