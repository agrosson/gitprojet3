//
//  ViewController.swift
//  teki
//
//  Created by ALEXANDRE GROSSON on 24/09/2018.
//  Copyright © 2018 GROSSON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var celebrities = ["le Steve Jobs","le Brian Ferry","le N'Golo Kanté", "la Madonna", "le Pape"]
    var activities = ["du dancefloor", "de la surprise ratée", "des blagues lourdes", "du développement ios"]
    
   
    @IBOutlet weak var quoteLabel: UILabel!
    
    
    @IBAction func changeQuote() {
        
        // Old version of random
        let randomIndex = Int(arc4random_uniform(UInt32(celebrities.count)))
        let randomCelebrity = celebrities[randomIndex]
        
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        let randomActivity = activities[randomIndex2]
        
        quoteLabel.text = "Tu es \(randomCelebrity ) \(randomActivity)"
        
        // New version of random with swift 4.2
        
       // quoteLabel.text = "Tu es \(celebrities.randomElement()!) \(activities.randomElement()!)"
       
        // print(celebrities.randomElement()!)
    }
    
}

