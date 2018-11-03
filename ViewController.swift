//
//  ViewController.swift
//  Dicee
//
//  Created by Malik on 10/29/18.
//  Copyright © 2018 Kilam Creatives. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // this is an IBOutlet, which changes the appearnce of the UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages();
    }
// this is an IBAction, notifies the code when the element is being interacted with
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages();
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6));
        randomDiceIndex2 = Int(arc4random_uniform(6));
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1]);
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2]);
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages();
    }
    
}

/*
    an IBOutlet - changes the appearance of the UI elemenet
    an IBAction - notifies the code when the element is being interacted with and performs the instructions in the code block
 If you need to rename a UI element, make sure to "break" the conection before renaming it
 
 Common Error
 "this class is not key value coding-compliant"
 - if this occurs, check the "link" !!
 
 Declaring a variable:
 var variableName : type = statement;
 
Creating a random number generator and assigning that random number to randomDiceIndex1, we are doing this to set the random dice
    - 6 is the upper bound
    - generates number 0 -> 5
 */
