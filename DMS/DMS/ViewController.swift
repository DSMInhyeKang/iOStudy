//
//  ViewController.swift
//  DMS
//
//  Created by 강인혜 on 2022/04/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pushButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func navPush(_ sender: UIButton)
    {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "secondViewControllerID")
        
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
}

