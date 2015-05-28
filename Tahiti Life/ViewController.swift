//
//  ViewController.swift
//  Tahiti Life
//
//  Created by Scott Auth on 5/28/15.
//  Copyright (c) 2015 Scott Auth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playerOneAdd: UIButton!
    @IBOutlet weak var playerOneMinus: UIButton!
    @IBOutlet weak var playerOneLife: UILabel!
    @IBOutlet weak var playerTwoMinus: UIButton!
    @IBOutlet weak var playerTwoAdd: UIButton!
    @IBOutlet weak var playerTwoLife: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    var playerOne = 20
    var playerTwo = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerOneLife.transform = CGAffineTransformMakeRotation(3.14)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func playerOnePlusAddButton(sender: AnyObject) {
        ++playerOne
        playerOneLife.text = String(playerOne)
    }
    
    @IBAction func playerOneMinusButton(sender: AnyObject) {
        --playerOne
        playerOneLife.text = String(playerOne)
    }
    
    @IBAction func playerTwoMinusButton(sender: AnyObject) {
        --playerTwo
        playerTwoLife.text = String(playerTwo)
    }
    
    @IBAction func playerTwoAddButton(sender: AnyObject) {
        ++playerTwo
        playerTwoLife.text = String(playerTwo)
    }
    
    @IBAction func resetButton(sender: AnyObject) {
        playerOne = 20
        playerTwo = 20
        playerOneLife.text = String(playerOne)
        playerTwoLife.text = String(playerTwo)
        
        let array = [1, 2]
        let randomPlayer = Int(arc4random_uniform(UInt32(array.count))) + 1
        
        let ac = UIAlertController(title: title, message: "Planeswalker \(randomPlayer) goes first", preferredStyle: .Alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .Default, handler: nil))
        presentViewController(ac, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

