//
//  Index.swift
//  NC1
//
//  Created by leejunmo on 2022/05/02.
//

import SwiftUI

class IndexData: ObservableObject {
    @Published var imgText: String = ""
    @Published var KWText: String = ""
    
    @Published var imgIdx: Int = Int.random(in: 0...Data.imgNames.count-1)
    @Published var KWIdx: Int = Int.random(in: 0...Data.keyWords.count-1)
    
    func reset() {
        imgText = ""
        KWText = ""
        imgIdx = Int.random(in: 0...Data.imgNames.count-1)
        KWIdx = Int.random(in: 0...Data.keyWords.count-1)
    }
}
