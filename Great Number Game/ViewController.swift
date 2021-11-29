//ViewController.swift
//  Great Number Game

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gussedNumber: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
            if let userGuess = gussedNumber.text{
                let userGuess2 :Int? = Int(userGuess)
                if let userNum = userGuess2{
                    randomNumber(userNum: userNum)}
            }
    }
    
    @IBOutlet weak var answerView: UIView!
    @IBOutlet weak var resultText: UITextView!
    @IBOutlet weak var resultDetails: UILabel!
    
    @IBAction func tryAgainBtn(_ sender: UIButton) {
        answerView.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerView.isHidden = true
        
    }

    func randomNumber(userNum : Int){
        let randomNum = Int.random(in: 1...100)
        print(randomNum)
        
            if userNum == randomNum{
                answerView.isHidden = false
                answerView.backgroundColor = UIColor.green
                resultText.text = "Correct!"
                resultDetails.text = "\(userNum) was the correct answer!!!"
            }else{
                answerView.isHidden = false
                answerView.backgroundColor = UIColor.red
                resultText.text = "Incorrect"
                
                if userNum > randomNum{resultDetails.text = "\(userNum) is too high"}
                else {resultDetails.text = "\(userNum) is too low"}
                
            }
    }

}
