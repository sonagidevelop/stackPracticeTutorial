//
//  TabViewSub.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/12.
//

import SwiftUI

struct TabViewSub: View {
    var title: String
    
    var bgColor: Color
    
    var body: some View {
        
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        }.animation(.none)
    }
}

struct TabViewSub_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSub(title: "1", bgColor: Color.blue)
    }
}
