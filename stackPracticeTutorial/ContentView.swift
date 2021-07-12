//
//  ContentView.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden : Bool = false
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment:.bottomTrailing) {
                
                VStack(alignment:.leading, spacing: 0){
                    
                    HStack{
                        
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                        
                        Spacer()
                        
                        NavigationLink(destination:
                                        ProfileView(isNavigationBarHidden: self.$isNavigationBarHidden)){
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                        
                    }
                    

                    .padding(.bottom, 20)
                    
                    
                    Text("최진혁 할 일 목록")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.bottom,15)
                    
                    ScrollView{
                        VStack{
                            MyProjectCard()
                            MyBasicCard()
                            MyCard(icon: "tray.fill", title: "책상 정리하기", start: "11AM", end: "1PM", bgColor: Color.gray)
                            MyCard(icon: "doc.fill", title: "책 읽기", start: "1PM", end: "3PM", bgColor: Color.green)
                            MyBasicCard()
                            MyBasicCard()
                            MyBasicCard()
                            MyBasicCard()
                            MyBasicCard()

                            
                            
                        }//vstack
                        
                    
                    }
                
                }//vstack
                .padding(.top, 10)
                .padding(.horizontal, 20)
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60, alignment: .center)
                    .overlay(Image(systemName: "plus"))
                    .font(.system(size:30))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(radius: 10)
            
            
            
        }//zstack
        
        .navigationBarTitle("메인화면으로")
        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = true
        }
       
    }//navigationview
}
}
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
