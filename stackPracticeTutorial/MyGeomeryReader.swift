//
//  MyGeomeryReader.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/11.
//

import SwiftUI

struct MyGeomeryReader: View {
    
    var body: some View {
        
        GeometryReader{
            GeometryReader in
            VStack(spacing : 0){
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .frame(width:GeometryReader.size.width / 3)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .frame(width:GeometryReader.size.width / 3)
                    .background(Color.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .frame(width:GeometryReader.size.width / 3)
                    .background(Color.green)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .foregroundColor(.white)
//                    .frame(width:50)
//                    .background(Color.purple)
            }.background(Color.yellow)
            .frame(width: GeometryReader.size.width, height: GeometryReader.size.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            

        }.background(Color.black)
        }
        
        
        
}

struct MyGeomeryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeomeryReader()
    }
}
