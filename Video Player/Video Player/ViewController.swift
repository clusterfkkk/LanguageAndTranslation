//
//  ViewController.swift
//  Video Player
//
//  Created by Emanuele Nappi on 28/05/2019.
//  Copyright © 2019 Emanuele Nappi. All rights reserved.
//
import AVKit
import AVFoundation
import UIKit

class ViewController: UIViewController {
    @IBAction func playVideo(_ sender: UIButton) {guard let url = URL(string: "https://www.radiantmediaplayer.com/media/bbb-360p.mp4") else {
        return
        }
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: url)
        
        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = player
        
        // Modally present the player and call the player's play() method when complete.
        present(controller, animated: true) {
            player.play()
        }
    }
    }
    
func viewDidLoad() {
    }

