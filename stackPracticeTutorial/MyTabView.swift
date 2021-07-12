//
//  MyTabView.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/12.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        ZStack {
            TabView{
                TabViewSub(title: "1", bgColor: .orange)
                    .tabItem  {
                        Image(systemName: "airplane")
                            
                    }
                    .tag(0)
                TabViewSub(title: "2", bgColor: .blue)
                    .tabItem  {
                        Image(systemName: "flame.fill")
                        Text("2번")
                    }
                    .tag(1)
                TabViewSub(title: "3", bgColor: .green)
                    .tabItem  {
                        Image(systemName: "doc.fill")
                        Text("3번")
                    }
                    .tag(2)
            }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
