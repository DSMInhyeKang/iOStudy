//
//  Memo.swift
//  BlogUI
//
//  Created by 강인혜 on 2022/05/16.
//

import Foundation

class Memo {
    var title: String
    var content: String
    //var insertDate: Date
    
    init(title: String, content: String) {
        self.title = title
        self.content = content
        //insertDate = Date()
    }
    
    static var dummyMemoList = [Memo(title: "first memo", content: "first memo content"), Memo(title: "second memo", content: "second memo content")]
}
