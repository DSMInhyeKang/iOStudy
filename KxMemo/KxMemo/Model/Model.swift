//
//  Model.swift
//  KxMemo
//
//  Created by 강인혜 on 2022/04/21.
//

import Foundation

class Memo {
    var content: String
    var inserDate: Date
    
    init(content: String) {
        self.content = content
        inserDate = Date()
    }
    
    static var dummyMemoList = [
        Memo(content: "InHye Kang"),
        Memo(content: "April 21th")
    ]
}
