//
//  DetailPicViewController.swift
//  0302
//
//  Created by H.W. Hsiao on 2020/3/20.
//  Copyright © 2020 H.W. Hsiao. All rights reserved.
//

import UIKit

class DetailPicViewController: UIViewController {

    @IBOutlet weak var picImageView: UIImageView!
    
    var pic: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        picImageView.image = pic
    }
    
}
