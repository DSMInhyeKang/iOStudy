//
//  MyPageViewController.swift
//  DMSChallenge
//
//  Created by 강인혜 on 2022/05/23.
//

import UIKit

class MyPageViewController: UIViewController {
    @IBOutlet weak var meritsView: UIView!
    @IBOutlet weak var demeritsView: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        meritsView.layer.cornerRadius = 20
        demeritsView.layer.cornerRadius = 20
        self.messageLabel.clipsToBounds = true
        self.messageLabel.layer.cornerRadius = 18
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
