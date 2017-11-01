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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dealTapped(sender:UIButton) {
        
        //randomize left number from 2 to 10
        let leftNumber = arc4random_uniform(9) + 2
        
        //randomize left image
        leftImageView.image = UIImage(named:"card\(leftNumber)")
        
        //randomize right number from 2 to 10
        let rightNumber = arc4random_uniform(9) + 2
        
        //randomize right image
        rightImageView.image = UIImage(named:"card\(rightNumber)")
    }


    
}

