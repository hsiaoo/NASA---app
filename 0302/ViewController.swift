//
//  ViewController.swift
//  0302
//
//  Created by H.W. Hsiao on 2020/3/2.
//  Copyright © 2020 H.W. Hsiao. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
       super.viewDidLoad()
       let barAppearance =  UINavigationBarAppearance()
       barAppearance.configureWithTransparentBackground()
        //指定特定頁面的barAppearance
       navigationItem.standardAppearance = barAppearance
    //指定此view controller裡所有的barAppearance
    //navigationController?.navigationBar.standardAppearance = barAppearance
    }

    @IBAction func youTubeButton(_ sender: Any) {
        if let url = URL(string: "https://www.youtube.com/user/NASAtelevision?sub_confirmation=1") {
            let youtubeSafari = SFSafariViewController(url: url)
            present(youtubeSafari, animated: true, completion: nil)
        }
    }
    
    @IBAction func podcastButton(_ sender: Any) {
        if let url = URL(string: "https://podcasts.apple.com/us/podcast/nasa-explorers-apollo/id1467961286") {
            let podcastSafari = SFSafariViewController(url: url)
            present(podcastSafari, animated: true, completion: nil)
        }
    }
    
    @IBAction func twitterButton(_ sender: Any) {
        if let url = URL(string: "https://twitter.com/NASA?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor") {
            let twitterSafari = SFSafariViewController(url: url)
            present(twitterSafari, animated: true, completion: nil)
        }
    }
    
    

    

}

