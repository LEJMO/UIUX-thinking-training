//
//  ContentView.swift
//  NC1
//
//  Created by leejunmo on 2022/04/30.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var pageData: IndexData

    
    var body: some View {
        NavigationView {
            ZStack {
                Color("back").ignoresSafeArea()
                VStack (alignment: .center) {
                    HStack {
                        Image("mainInfo").padding(.leading, 20)
                        Spacer()
                    }
                    NavigationLink(destination: Train1().environmentObject(pageData)) {
                        Image("mainButton")
                            .padding(EdgeInsets(top: 120, leading: 0, bottom: 80, trailing: 0))
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
