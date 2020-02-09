//
//  ViewController.swift
//  SammyHACK
//
//  Created by Andrea Tongsak on 2/8/20.
//  Copyright © 2020 Andrea Tongsak. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sample", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        }
        catch {
            print(error)
        }
        
    }
    
    @IBAction func PlayB(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func PauseB(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.pause()
        } else {
            
        }
    }
    
    @IBAction func RewindB(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.currentTime = 0;
            audioPlayer.play()
        } else {
            audioPlayer.play()
        }
    }
    
}

