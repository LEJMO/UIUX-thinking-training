//
//  Train1.swift
//  NC1
//
//  Created by leejunmo on 2022/05/01.
//

import SwiftUI

struct Train1: View {
    @EnvironmentObject var pageData: IndexData
    @FocusState private var textFocused: Bool
    
    var body: some View {
        ZStack {
            Color("back").ignoresSafeArea()
            VStack (alignment: .center) {
                if !textFocused {
                    Text("Describe precisely").font(.system(size: 34, weight: .bold)).foregroundColor(Color("mainFont"))
                }
                Image(systemName: Data.imgNames[pageData.imgIdx])
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: textFocused ? 180:240, height: textFocused ? 180:240)
                    .padding(.vertical, 27)
                ZStack (alignment: .leading) {
                    TextEditor(text: $pageData.imgText)
                        .foregroundColor(Color("mainFont"))
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                        .frame(height: textFocused ? 200:269)
                        .lineSpacing(10)
                        .focused($textFocused)
                    if pageData.imgText.isEmpty {
                        Text("내용을 입력하세요").padding(EdgeInsets(top: 0, leading: 38, bottom: textFocused ? 155:225, trailing: 0)).foregroundColor(Color("grayFont"))
                    }
                }
                Spacer().frame(height: 80)
            }
        }.navigationBarItems(trailing: NavigationLink(destination: Train2().environmentObject(pageData)) {
            Text("Next")
        })
        .onTapGesture {
            textFocused = false
        }
    }
}

struct Train1_Previews: PreviewProvider {
    static var previews: some View {
        Train1()
    }
}
