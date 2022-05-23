//
//  MenuViewController.swift
//  DMSChallenge
//
//  Created by 강인혜 on 2022/05/18.
//

import UIKit
import SPIndicator

class MenuViewController: UIViewController {
    @IBOutlet weak var breakfastView: UIView!
    @IBOutlet weak var lunchView: UIView!
    @IBOutlet weak var dinnerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        SPIndicator.present(title: "Error", message: "Try Again", preset: .error)
        breakfastView.layer.cornerRadius = 20
        lunchView.layer.cornerRadius = 20
        dinnerView.layer.cornerRadius = 20

    }


}
