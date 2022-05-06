//
//  NC1App.swift
//  NC1
//
//  Created by leejunmo on 2022/04/30.
//

import SwiftUI

@main
struct NC1App: App {
    @StateObject private var indexData = IndexData()
    
    init() {
        UITextView.appearance().textContainerInset =
            UIEdgeInsets(top: 12, left: 12, bottom: 0, right: 12)   // << !!
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.light)
                .environmentObject(indexData)
        }
    } 
}


// 닐슨

// think aloud
