//
//  InstructionsViewController.swift
//  Card Match Game
//
//  Created by Budding Minds Admin on 2018-03-14.
//  Copyright © 2018 Budding Minds Admin. All rights reserved.
//

import UIKit

class YouthInstructionsViewController: UIViewController {

    @IBOutlet weak var instrImage: UIImageView!
    
    // Go to game once play button on instruction screen is pressed
    @IBAction func playGameButton(_ sender: Any) {
        performSegue(withIdentifier: "instrToGameYouth", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up which instruction image will be shown
        if instructionToShowYouth == 1 {
            instrImage.image = UIImage(named:"instruction 1_Youth.jpg")
        } else if instructionToShowYouth == 2 {
            instrImage.image = UIImage(named:"instruction 2_Youth.jpg")
        } else if instructionToShowYouth == 3{
            instrImage.image = UIImage(named:"instruction 3_Youth.jpg")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
