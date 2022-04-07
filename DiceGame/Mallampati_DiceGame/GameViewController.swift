//
//  GameViewController.swift
//  Mallampati_DiceGame
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var playerOneTotalGamesOutlet: UILabel!
    @IBOutlet weak var playerTwoTotalGamesOutlet: UILabel!
    @IBOutlet weak var playerOneCurrentScoreOutlet: UILabel!
    @IBOutlet weak var playerTwoCurrentScoreOutlet: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    var playerOneName:String = "";
    var playerTwoName:String = "";
    
    var playerOneTotalWins:Int = 0;
    var playerTwoTotalWins:Int = 0;
    
    
    var playerOneCurrentScore :Int? = nil;
    var playerTwoCurrentScore :Int? = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLabels(imgName: "play");
        
    }
    
    func updateLabels(imgName:String){
        playerOneTotalGamesOutlet.text = "Total number of games \(playerOneName) won: \(playerOneTotalWins)";
        
        playerTwoTotalGamesOutlet.text = "Total number of games \(playerTwoName) won: \(playerTwoTotalWins)";
        
        playerOneCurrentScoreOutlet.text = "\(playerOneName) current score: \(playerOneCurrentScore != nil ? String(playerOneCurrentScore!) : "-")";
        
        playerTwoCurrentScoreOutlet.text = "\(playerTwoName) current score: \(playerTwoCurrentScore != nil ? String(playerTwoCurrentScore!) : "-")";
        
            imageOutlet.image = UIImage(named: imgName);
    }
    
    
   
    @IBAction func onRollDiceBtnClick(_ sender: Any) {
        playerOneCurrentScore = Int.random(in: 1...6);
        playerTwoCurrentScore = Int.random(in: 1...6);
        if(playerOneCurrentScore! > playerTwoCurrentScore!){
            playerOneTotalWins += 1;
            updateLabels(imgName: "dice\(playerOneCurrentScore!)");
        }
        else if(playerTwoCurrentScore! > playerOneCurrentScore!){
            playerTwoTotalWins += 1;
            updateLabels(imgName: "dice\(playerTwoCurrentScore!)");
        }
        else{
            updateLabels(imgName: "tie");
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
