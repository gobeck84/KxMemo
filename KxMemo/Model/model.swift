//
//  model.swift
//  KxMemo
//
//  Created by choi on 02/05/2019.
//  Copyright © 2019 choi. All rights reserved.
//

import Foundation

class Diary {
    
    var title:String
    var content:String
    var insertDate:Date
    
    init(title:String , content:String) {
        self.title = title
        self.content = content
        insertDate = Date()
    }
    
    static var dummyDiaryList = [
        Diary(title:"어머니 생신 전날" , content:"매드 포 갈릭 먹었네"),
        Diary(title:"어머니 생신" , content:"축하해요 어머니"),
        Diary(title:"전 푸른밤 사람들 모임" , content:"마셔 볼까나? 마셔 볼까나? 마셔 볼까나?" +
            "마셔 볼까나?마셔 볼까나?마셔 볼까나?마셔 볼까나?마셔 볼까나?마셔 볼까나?마셔 볼까나?마셔 볼까나?"),
    ]
}
