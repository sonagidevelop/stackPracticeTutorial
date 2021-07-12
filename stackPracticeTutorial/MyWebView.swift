//
//  MyWebView.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/11.
//

import SwiftUI
import WebKit


//uikit의 uiview를 사용할 수 있도록 한다.
//UIViewControllerRepresentable

struct MyWebView: UIViewRepresentable {
    
    
    
    var urlToLoad:String
    
    
    //uiview 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else{
            return WKWebView()
        }
        
        
        let webview = WKWebView()
        webview.load(URLRequest(url: url))
    
        return webview
    }
    
    //update ui view\
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
    
}


struct MyWebView_Previews: PreviewProvider {
    static var previews: some View{
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
