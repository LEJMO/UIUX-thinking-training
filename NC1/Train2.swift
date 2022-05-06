//
//  Train2.swift
//  NC1
//
//  Created by leejunmo on 2022/05/01.
//

import SwiftUI

struct Train2: View {
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var pageData: IndexData
    @FocusState private var textFocused: Bool
    
    var body: some View {
        ZStack {
            Color("back").ignoresSafeArea()
            VStack (alignment: .center) {
                Text("What is the best\n\(Data.keyWords[pageData.KWIdx])")
                    .font(.system(size: 34, weight: .bold))
                    .multilineTextAlignment(.center)
                    .lineSpacing(10)
                    .frame(height: 120)
                    .foregroundColor(Color("mainFont"))
                ZStack (alignment: .leading) {
                    TextEditor(text: $pageData.KWText)
                        .foregroundColor(Color("mainFont"))
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                        .frame(height: 269)
                        .lineSpacing(10)
                        .focused($textFocused)
                    if pageData.imgText.isEmpty {
                        Text("내용을 입력하세요").padding(EdgeInsets(top: 0, leading: 38, bottom: 225, trailing: 0)).foregroundColor(Color("grayFont"))
                    }
                }
                Spacer().frame(height: 80)
            }
        }.navigationBarItems(trailing:
            Button("Done", action: {
                pageData.reset()
                NavigationUtil.popToRootView()
            })
        )
        .onTapGesture {
            textFocused = false
        }
    }
}


