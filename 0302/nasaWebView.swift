//
//  nasaWebView.swift
//  0302
//
//  Created by H.W. Hsiao on 2020/3/14.
//  Copyright © 2020 H.W. Hsiao. All rights reserved.
//

import UIKit
import WebKit

class nasaWebView: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://www.nasa.gov") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

}
