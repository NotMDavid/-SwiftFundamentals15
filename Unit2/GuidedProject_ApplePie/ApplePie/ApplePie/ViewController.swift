//
//  ViewController.swift
//  ApplePie
//
//  Created by spring2025 on 3/9/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var treeImageView: UIImageView!
    
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var correctWordLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    let incorrectMovesAllowed = 4
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func letterPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString  = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateUI()
        updateGameState()
    }
    
    var currentGame: Game!
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMoveRemaing: incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        }
        else {
            enableLetterButtons(false)
        }
    }
    
    func updateGameState() {
        if currentGame.incorrectMoveRemaing == 0 {
            totalLosses += 1
        }
        else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        }
        else {
            updateUI()
        }
    }
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = currentGame.formattedWord
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image =  UIImage(named: "Tree \(currentGame.incorrectMoveRemaing)")
    }
    
    func enableLetterButtons (_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
}
