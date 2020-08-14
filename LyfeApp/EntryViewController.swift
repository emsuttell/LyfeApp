//
//  EntryViewController.swift
//  LyfeApp
//
//  Created by Apple on 8/13/20.
//  Copyright © 2020 EmmaxManasaCode. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {


   
    @IBOutlet weak var titleField: UITextField!
   

    @IBOutlet weak var noteField: UITextView!
    public var completion: ((String, String) -> Void)?

   override func viewDidLoad() {
       super.viewDidLoad()
       titleField.becomeFirstResponder()
       navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
   }

   @objc func didTapSave() {
       if let note = titleField.text, !note.isEmpty, !noteField.text.isEmpty {
           completion?(note, noteField.text)
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
