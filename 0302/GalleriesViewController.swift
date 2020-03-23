//
//  GalleriesViewController.swift
//  0302
//
//  Created by H.W. Hsiao on 2020/3/19.
//  Copyright © 2020 H.W. Hsiao. All rights reserved.
//

import UIKit
import AVKit

class GalleriesViewController: UIViewController {


    var tag: Int?
    
    @IBOutlet var imageButton: [UIButton]!
    @IBAction func imageActionButton(_ sender: UIButton) {
        tag = sender.tag
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBSegueAction func detailPic(_ coder: NSCoder) -> DetailPicViewController? {
        let controller = DetailPicViewController(coder: coder)
        if let tag = tag {
            controller?.pic = imageButton[tag].currentImage
        }
        return controller
    }
    
    @IBAction func video1Button(_ sender: Any) {
        if let url = URL(string: "https://bit.ly/393C5as") {
            let video1player = AVPlayer(url: url)
            let controller = AVPlayerViewController()
            controller.player = video1player
            controller.player?.playImmediately(atRate: 1)
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func video2Button(_ sender: Any) {
        if let url = URL(string: "https://bit.ly/3bd9scm") {
            let video1player = AVPlayer(url: url)
            let controller = AVPlayerViewController()
            controller.player = video1player
            controller.player?.playImmediately(atRate: 1)
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func video3Button(_ sender: Any) {
        if let url = URL(string: "https://bit.ly/2WA59Uz") {
            let video1player = AVPlayer(url: url)
            let controller = AVPlayerViewController()
            controller.player = video1player
            controller.player?.playImmediately(atRate: 1)
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func video4Button(_ sender: Any) {
        if let url = URL(string: "https://bit.ly/2U5CTr0") {
            let video1player = AVPlayer(url: url)
            let controller = AVPlayerViewController()
            controller.player = video1player
            controller.player?.playImmediately(atRate: 1)
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func video5Button(_ sender: Any) {
        if let url = URL(string: "https://bit.ly/3dlWef9") {
            let video1player = AVPlayer(url: url)
            let controller = AVPlayerViewController()
            controller.player = video1player
            controller.player?.playImmediately(atRate: 1)
            present(controller, animated: true, completion: nil)
        }
    }
    
}
