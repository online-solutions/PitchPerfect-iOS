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
        recordInProcess.hidden = false
        stopRecordAudio.hidden = false
        //TODO: record user's voice
        println("in recordAudio func")
    }
    
    @IBAction func saveAudio(sender: UIButton) {
        recordInProcess.hidden = true
        // TODO: change stop icon to another icon
    }
    

}

