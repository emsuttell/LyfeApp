//
//  profilePage1.swift
//  LyfeApp
//
//  Created by Apple on 8/12/20.
//  Copyright © 2020 EmmaxManasaCode. All rights reserved.
//

import UIKit

class profilePage1: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
     var imagePicker = UIImagePickerController()

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         imagePicker.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseFromLibrary(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        
          present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
         imageView.image = selectedImage
       
         
    }
    imagePicker.dismiss(animated: true, completion: nil)
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
