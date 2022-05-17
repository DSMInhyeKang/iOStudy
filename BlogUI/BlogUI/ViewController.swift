//
//  ViewController.swift
//  BlogUI
//
//  Created by 강인혜 on 2022/05/07.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var backGrondView: UIView!
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = UIImage(named: "prfimage")
        imgView.clipsToBounds = true
        imgView.layer.cornerRadius = imgView.frame.width/2
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Memo.dummyMemoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell

        let target = Memo.dummyMemoList[indexPath.row]
        cell.cellTitle.text = target.title
        cell.cellContents.text = target.content

        return cell
    }
}
