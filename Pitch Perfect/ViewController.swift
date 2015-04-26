//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by KhanhPhung on 25/4/15.
//  Copyright (c) 2015 Online Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordInProcess: UILabel!
    @IBOutlet weak var stopRecordAudio: UIButton!
    @IBOutlet weak var startRecordAudio: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopRecordAudio.hidden = true
    }

    @IBAction func recordAudio(sender: UIButton) {
        // show "recording" text
        recordInProcess.hidden = false
        // show stop icon
        stopRecordAudio.hidden = false
        // change bg image
        let myImage = UIImage(named:"MicroClickedIcon")
        startRecordAudio.setImage(myImage, forState: UIControlState.Normal)
        //TODO: record user's voice
        println("in recordAudio func")
    }
    
    @IBAction func saveAudio(sender: UIButton) {
        recordInProcess.hidden = true
        startRecordAudio.setImage(UIImage(named: "MicroIcon"), forState: UIControlState.Normal)
        // TODO: change stop icon to another icon
    }
    

}

