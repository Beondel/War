//  Ben MacMillan
//  ViewController.swift
//  War
//
//  Created by Benjamin Macmillan on 2/9/17.
//  Copyright © 2017 Bloop Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // cards
    @IBOutlet weak var rightCard: UIImageView!
    @IBOutlet weak var leftCard: UIImageView!
    // scores
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var cpuScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let leftNumber = arc4random_uniform(9) + 2
        let rightNumber = arc4random_uniform(9) + 2
        leftCard.image = UIImage(named: "card\(leftNumber)")
        rightCard.image = UIImage(named: "card\(rightNumber)")
    }
}

