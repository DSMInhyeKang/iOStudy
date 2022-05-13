//
//  ViewController.swift
//  BlogUI
//
//  Created by 강인혜 on 2022/05/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var backGrondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = UIImage(named: "prfimage")
        imgView.clipsToBounds = true
        imgView.layer.cornerRadius = imgView.frame.width/2

    }
}
