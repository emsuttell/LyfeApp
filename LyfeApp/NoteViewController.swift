//
//  NoteViewController.swift
//  LyfeApp
//
//  Created by Apple on 8/13/20.
//  Copyright © 2020 EmmaxManasaCode. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
     
    @IBOutlet weak var noteLabel: UITextView!
    
     public var noteTitle: String = ""
     public var note: String = ""

     override func viewDidLoad() {
         super.viewDidLoad()
         titleLabel.text = noteTitle
         noteLabel.text = note
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
