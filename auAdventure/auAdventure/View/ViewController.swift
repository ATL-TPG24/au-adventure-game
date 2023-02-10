//
//  ViewController.swift
//  auAdventure
//
//  Created by Tony Giamboy on 2/7/23.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var optionOne: UIButton!
    
    @IBOutlet weak var optionTwo: UIButton!
    
    var adventureLogic = adventurelogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    

    
    
    @IBAction func optionSubmitted(_ sender: UIButton) {
        let answerSubmitted = sender.titleLabel!.text!
//        if (answerSubmitted == "Football") {
//            adventureLogic.questionIndex = 1
//        }
//        if (answerSubmitted == "Baseball") {
//            adventureLogic.questionIndex = 2
//        }
        if (answerSubmitted == "Football Coach") {
            background.image = UIImage(named: "freeze")

        }
        if (answerSubmitted == "Band") {
            background.image = UIImage(named: "auband")

        }
        if (answerSubmitted == "Baseball Coach") {
            background.image = UIImage(named: "butch")

        }
        if (answerSubmitted == "Aubie") {
            background.image = UIImage(named: "aubie")

        }
        adventureLogic.increaseIndex(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = adventureLogic.getNextQuestion()
        optionOne.setTitle(adventureLogic.getChoiceOne(), for: .normal)
        optionTwo.setTitle(adventureLogic.getChoiceTwo(), for: .normal)
//        background.image = UIImage(named: String(adventureLogic.getImageName()))

    }
    

    
    
    
    
}
