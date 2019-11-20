//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Megan OBryan on 11/17/19.
//  Copyright © 2019 Makeschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = ["Fosho", "Never", "That's sus", "Hmm... I dunno about that one...", "There's nothing I'm more certain about"]
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        generateAnswer()
    }
    
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<answers.count)

        answerLabel.text = answers[randomIndex]
    }
}

