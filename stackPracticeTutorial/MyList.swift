//
//  MyList.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/11.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        
//        List{
//
//            Text("마이 리스트")
//        }
//
        
        List{
            
            Section(
                header: Text("오늘 할 일").font(.headline).foregroundColor(.black),
                footer: Text("footer")
                ){
                ForEach(1...3, id:\.self)
                { itemIndex in
                    MyCard(icon: "doc.fill", title: "책 읽기\(itemIndex)", start: "1PM", end: "3PM", bgColor: Color.green)}
            
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            
            Section(header: Text("내일 할 일")){
                ForEach(1...10, id:\.self){ itemIndex in
                    MyCard(icon: "doc.fill", title: "책 읽기\(itemIndex)", start: "1PM", end: "3PM", bgColor: Color.green)
                }
            }.listRowBackground(Color.yellow)
        
        }.listStyle(GroupedListStyle())
        //.navigationBarTitle("메인화면으로")
        .navigationTitle("내 목록")

//        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = false
        }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
}
