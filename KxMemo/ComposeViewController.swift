//
//  ComposeViewController.swift
//  KxMemo
//
//  Created by choi on 11/05/2019.
//  Copyright © 2019 choi. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    @IBOutlet weak var contentTextView: UITextView!
    
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func save(_ sender: Any) {
        
        let inputTitle = titleTextField.text!
        let inputContent = contentTextView.text!
        
    
        DataManager.shared.addNewDiary(inputTitle, inputContent)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentTextView.layer.borderWidth = 1.0
        contentTextView.layer.borderColor = UIColor.black.cgColor

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
