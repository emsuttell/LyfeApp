//
//  NoteViewController.swift
//  LyfeApp
//
//  Created by Apple on 8/12/20.
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


}
