//
//  ViewController.swift
//  Mallampati_DiceGame
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstPlayerOutlet: UITextField!
    @IBOutlet weak var secondPlayerOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier;
        if transition == "gameViewSegue"{
            let destination = segue.destination as! GameViewController;
            destination.playerOneName = firstPlayerOutlet.text!;
            destination.playerTwoName = secondPlayerOutlet.text!;
        }
    }
    

    
}

