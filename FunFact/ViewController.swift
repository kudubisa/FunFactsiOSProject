//
//  ViewController.swift
//  FunFact
//
//  Created by Andrya on 10/25/17.
//  Copyright © 2017 KuduBisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    let backgroundColorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factProvider.facts[0]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.getRandomFact()
        let randomColor = backgroundColorProvider.randomNumber()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
    
    

}

