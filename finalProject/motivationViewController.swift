//
//  motivationViewController.swift
//  finalProject
//
//  Created by Apple on 6/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class motivationViewController: UIViewController {
    
    var customMessage =  ["Keep smiling today😁", "Work even harder‼️", "The sky is the limit🌟", "If you can dream it, you can be it🎊", "#YOLO", "Live your best life🗺", "Keep being YOU!!", "You are incredible!", "Great things never come from comfort zones🤔", "Your limitation- it's only your imagination🤯", "Create your own sunshine☀️", "Shoot for the moon. Even if you miss, you will land among the stars🌟", "If you want, you can!!", "Why fit in when you were born to stand out?", "Take a leap of faith today!", "YOU CAN DO IT", "Work like your celebrity crush is waiting for you🤩", "You will never learn if you don't ask questions!", "The world is filled with endless possibilities🌎"]
    
  
    @IBAction func showMessage(_ sender: Any) {
        let randomized = Int.random(in : 0...7)
        let emojiMessage = customMessage[randomized]
        
        let alertController = UIAlertController(title: "Today's Motivational Message:)", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title : ":)", style : UIAlertAction.Style.default, handler : nil))
        
        present(alertController, animated : true, completion : nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
