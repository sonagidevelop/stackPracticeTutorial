//
//  ProfileView.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/11.
//

import SwiftUI
import WebKit

struct ProfileView: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    
    var body: some View {
        
        
            VStack{
                Spacer()
                Image(systemName: "guitars.fill")
                    .padding()
                    .font(.system(size: 120))
                    .overlay(Circle().stroke(lineWidth: 5).foregroundColor(.gray))
                Spacer()
                Text("공부하는 진혁")
                
                Text("많은 응원 부탁드립니다!")
                Spacer()
                HStack{
                    
                    NavigationLink(destination:MyWebView(urlToLoad: "https://www.instagram.com/jinh326/")
                                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    ){
                        Text("인스타그램")
                            .padding(15)
                            .font(.system(size: 30))
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            
                    }
                    
                    NavigationLink(destination:MyWebView(urlToLoad: "https://github.com/sonagidevelop/-Python-")
                                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    ){
                        Text("깃허브")
                            .padding(15)
                            .font(.system(size: 30))
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                    }
                    
                    
                    //메일보내기 버튼
                    //인스타그램 보기 버튼
                    
                }
                Spacer()
            }
            
        
        
        .navigationTitle("내 프로필")
        .navigationBarTitle("프로필로")
        .navigationBarItems(trailing:
            NavigationLink(
                destination: Text("Destination")
            ){Image(systemName: "gear")
                .font(.system(.largeTitle))
                .foregroundColor(.black)
            }
        )
//        .onAppear{
//            self.isNavigationBarHidden = false
//        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
