//
//  MyGeometryReaderVstack.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/11.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVstack: View {
    
    @State var index : Index = .one
    
    
    var body: some View {
        
        GeometryReader{ GeometryReader in
            VStack{
                
                Button(action: {
                    withAnimation{
                        self.index = .one
                    }
                }){
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width:100, height:GeometryReader.size.height / 3 )
                        .padding(.horizontal, self.index == .one ? 100 : 0)
                        .background(Color.red)
                    
                }
                
                Button(action: {
                    withAnimation{
                        self.index = .two
                    }
                }){
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width:100, height:GeometryReader.size.height / 3 )
                        .padding(.horizontal, self.index == .two ? 100 : 0)
                        .background(Color.blue)
                    
                }
                
                
                Button(action: {
                    withAnimation{
                        self.index = .three
                    }
                }){
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width:100, height:GeometryReader.size.height / 3 )
                        .padding(.horizontal, self.index == .three ? 100 : 0)
                        .background(Color.green)
                    
                }
                
            }
        }
        
        .background(Color.yellow)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MyGeometryReaderVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVstack()
    }
}
