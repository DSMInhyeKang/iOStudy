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
    @IBOutlet weak var breakfastTextView: UITextView!
    @IBOutlet weak var lunchTextView: UITextView!
    @IBOutlet weak var dinnerTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNowDate()
        getUsers()
//        SPIndicator.present(title: "Error", message: "Try Again", preset: .error)
        breakfastView.layer.cornerRadius = 20
        lunchView.layer.cornerRadius = 20
        dinnerView.layer.cornerRadius = 20
    }
    
    var currentDate = ""    // 오늘 날짜 변수
    
    func getNowDate() {
        let dateFormatter = DateFormatter()
        let date = Date()
        dateFormatter.dateFormat = "YYYY-MM-dd" // set
        currentDate = dateFormatter.string(from: date)
    }
    
    private func getUsers() {
        let url = "https://api.dsm-dms.com/meal/" + currentDate
        let session = URLSession.shared
        guard let requestURL = URL(string: url) else {return}
        session.dataTask(with: requestURL) { data, response, error in
            if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 {
                do {
                    let jsonSerialization = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: [String: [String]]]
                    let dateData = jsonSerialization[self.currentDate]
                    let breakfastData = dateData?["breakfast"]
                    let lunchData = dateData?["lunch"]
                    let dinnerData = dateData?["dinner"]
                    print("breakfast : \(String(describing: breakfastData))\n",
                          "lunch : \(String(describing: lunchData))\n",
                          "dinner : \(String(describing: dinnerData))\n")
                    DispatchQueue.main.async {
                        self.breakfastTextView.text = "\(String(describing: breakfastData))"
                        self.lunchTextView.text = "\(String(describing: lunchData))"
                        self.dinnerTextView.text = "\(String(describing: dinnerData))"
                    }
                }
            }
        }.resume()
    }
    
}
