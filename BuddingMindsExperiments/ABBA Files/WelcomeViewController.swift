//
//  WelcomeViewController.swift
//  project1
//
//  Created by Sakshaat Choyikandi on 2018-08-01.
//  Copyright © 2018 The Budding Minds Lab. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var subjectNum: UITextField!
    @IBOutlet var subjectAge: UITextField!
    
    
    var subject: String = ""
    var age: String = ""
    
    @IBAction func startBtn(_ sender: Any) {
        //print("button clicked!")
        subject = "Subject,Age\n" + subjectNum.text! + ","
        //write_to_csv(text: subject)
        age = subjectAge.text! + "\n"
        //write_to_csv(text: age)
        performSegue(withIdentifier: "showLearningPhase", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC: LearningPhaseViewController = segue.destination as! LearningPhaseViewController
        destVC.setSubject(subj: subject)
        //destVC.subject = subject
        destVC.setAge(age: age)
        
    }
    
        
}

