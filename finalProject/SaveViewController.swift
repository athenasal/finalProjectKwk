//
//  SaveViewController.swift
//  finalProject
//
//  Created by Apple on 6/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class SaveViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var summarize: UITextField!
    @IBOutlet weak var highlight: UITextField!
    @IBOutlet weak var lesson: UITextField!
    @IBOutlet weak var improve: UITextField!
    @IBOutlet weak var thankful: UITextField!
    @IBAction func saveDailyButton(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let photoToSave = Journals(entity: Journals.entity(), insertInto: context)
            photoToSave.question1 = summarize.text
             photoToSave.question2 = highlight.text
             photoToSave.question1 = lesson.text
             photoToSave.question1 = improve.text
             photoToSave.question1 = thankful.text
            
           (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
             navigationController?.popViewController(animated: true)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
