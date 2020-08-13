//
//  meditationPage.swift
//  LyfeApp
//
//  Created by Apple on 8/12/20.
//  Copyright © 2020 EmmaxManasaCode. All rights reserved.
//

import UIKit
import AVFoundation

class meditationPage: UIViewController {
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    let sound = Bundle.main.path(forResource: "bensoundrelaxing", ofType: "mp3")

    do{
        
    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
    }
    catch{
            print(error)
            }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playButtonRelax(_ sender: Any) {
         audioPlayer.play()
    }
    
    @IBAction func stopButtonRelax(_ sender: Any) {
        audioPlayer.stop()
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
