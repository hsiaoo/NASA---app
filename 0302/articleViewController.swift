//
//  articleViewController.swift
//  0302
//
//  Created by H.W. Hsiao on 2020/3/15.
//  Copyright © 2020 H.W. Hsiao. All rights reserved.
//

import UIKit
import AVFoundation

class articleViewController: UIViewController {

    @IBOutlet weak var articleA: UILabel!
    let synth = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func speakA(_ sender: Any) {
        if synth.isPaused == true {
            synth.continueSpeaking()
        } else if synth.isSpeaking == true {
            synth.pauseSpeaking(at: .word)
        } else if synth.isSpeaking == false {
            if let textA = articleA.text {
                let speakA = AVSpeechUtterance(string: textA)
                synth.speak(speakA)
            }
        }
    }
    
}
