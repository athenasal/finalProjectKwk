//
//  ILoveMeViewController.swift
//  finalProject
//
//  Created by Apple on 6/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ILoveMeViewController: UIViewController {
    
    
    @IBOutlet weak var loveMe: UILabel!
    
    
    @IBOutlet weak var inputText: UITextField!
    
    let messages = ["I am strong, I have exceeded others expectations for me", "I am capable", "I have people in my life who love and vaue me", "I am important", "I have learned a lot and come a long way in my life", "I am growing."]

    
    @IBAction func go(_ sender: UIButton) {
  
        let randomized = Int.random(in : 0...6)
        if (loveMe.text! == inputText.text!) {
            loveMe.text = messages[randomized]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
