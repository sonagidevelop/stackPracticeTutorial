//
//  MyProjectCard.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/11.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment:.leading, spacing: 0){
            
            Rectangle().frame(height:0)
            
            Text("최진혁 유튜브 프로젝트")
                .padding(.bottom, 5)
            Text("10AM - 11AM")
                .padding(.bottom, 10)
            HStack{
                Image("64")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 5).foregroundColor(.orange))
                Image("53")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                Image("89")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    print("확인 버튼 클릭됨")
                    self.shouldShowAlert = true
                }){
                    Text("확인")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .frame(width: 80 )
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert ){
                    Alert(title: Text("알림창입니다."))
                }
                
                    
            }
            
            
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
