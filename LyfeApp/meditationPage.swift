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
    var audioPlayer1 = AVAudioPlayer()
    var audioPlayer2 = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    let sound = Bundle.main.path(forResource: "bensoundrelaxing", ofType: "mp3")
    let sound1 = Bundle.main.path(forResource: "gamela", ofType: "mp3")
     let sound2 = Bundle.main.path(forResource: "dreamescape", ofType: "mp3")

    do{
        
    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        
    audioPlayer1 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound1!))
        
    audioPlayer2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound2!))
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

    @IBAction func playButtonGamela(_ sender: Any) {
        audioPlayer1.play()
        
    }
    
    @IBAction func stopButtonGamela(_ sender: Any) {
        audioPlayer1.stop()
    }
    
    
    @IBAction func playButtonDream(_ sender: Any) {
        audioPlayer2.play()
        
    }
    
    @IBAction func stopButtonDream(_ sender: Any) {
        audioPlayer2.stop()
    }
    
    
    @IBAction func breatheButton(_ sender: Any) {
        if let url = NSURL(string: "https://www.helpguide.org/meditations/deep-breathing-meditation.htm"){             UIApplication.shared.open(url as URL) }
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
