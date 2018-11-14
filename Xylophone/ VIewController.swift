//
//  ViewController.swift
//  Xylophone
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        if let soundURL =  Bundle.main.url(forResource: "note1", withExtension: "wav") {
            var mySound : SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            AudioServicesPlaySystemSound(mySound);
        }
    }
}

