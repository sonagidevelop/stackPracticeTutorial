//
//  MyBasicCard.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/11.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "flame.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/){
                Divider().opacity(0)
                Text("하하하")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                
                Text("하하하")
                    .foregroundColor(.white)
            }
            
        }
        .padding()
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
