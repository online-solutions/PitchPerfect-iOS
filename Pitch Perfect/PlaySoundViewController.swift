//
//  PlaySoundViewController.swift
//  Pitch Perfect
//
//  Created by KhanhPhung on 26/4/15.
//  Copyright (c) 2015 Online Solutions. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {
    
    var player:AVAudioPlayer!
    
    @IBOutlet weak var buttonStop: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonStop.hidden = true
        
        if var audioPath = NSBundle.mainBundle().pathForResource("mySound", ofType: "mp3"){
            let fileURL = NSURL(fileURLWithPath: audioPath)
            player = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
            player.enableRate = true
            

        } else {
            println("audio file not exist")
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowAudio(sender: UIButton) {
        playAudio(0.5)
    }
    
    @IBAction func playFastAudio(sender: UIButton) {
        playAudio(1.5)
    }
    
    func playAudio(speed:Float){
        player.stop()
        player.rate = speed
        player.currentTime = 0.0
        player.play()
        buttonStop.hidden = false

    }
    
    @IBAction func stopPlayAudio(sender: UIButton) {
        player.stop()
        buttonStop.hidden = true
    }
    
    
}
