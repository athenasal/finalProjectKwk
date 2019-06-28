//
//  EmojiViewController.swift
//  finalProject
//
//  Created by Apple on 6/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    let emojiArray = [" 🤓 ": "nerdy", " 😢 ": "sad", " 🤬 " : "stressed", " 😴 " : "tired", " 🤪 " : "unfocused", " 💪 " : "productive"]
    let customMessages = [
        "nerdy" : ["think like a proton 🔬 and stay positive 😄", "let's do a pomodoro session", "the most effective way to study is in intervals"],
        "sad" : ["take a short break and reconnect with yourself ❤ ", "write down 📒 your feelings", "you aren't ready right now and that's okay"],
        "stressed" : ["grab a yoga mat 🧘🏾‍♀️ or hit the gym 🏋️‍♂️"],
        "tired" : ["hydrate 🚰 or diedrate ☠️", "get some healthy snacks 🍌"],
        "unfocused" : ["motivation is fleeting", "fake it till you make it", "try it for 10 minutes", "stop making excuses"],
        "productive" : ["yeah lets go!", "keep it up!", "you're on top of the world"]
    ]
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let emojiMessages = customMessages[emojiArray[selectedEmotion!]!]?[0]
        let alertController = UIAlertController(title: emojiArray[selectedEmotion!], message: emojiMessages, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}



