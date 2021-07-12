//
//  MyNavigationView.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/11.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        
        NavigationView{
//            Text("MyNavigationView")
            
            MyList()
                .navigationBarTitle("안녕하세요", displayMode: .large)
                .navigationBarItems(leading:
                    Button(action:{
                    print("hoho")
                }){
                    Text("호호")
                    },trailing: NavigationLink(destination: Text("넘어온 화면입니다.")){
                        Image(systemName: "flame")
                    }
                    
        )
            
        }
        
        
    }


struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
}
