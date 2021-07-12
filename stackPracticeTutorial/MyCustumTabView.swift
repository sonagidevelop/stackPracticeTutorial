//
//  MyCustumTabView.swift
//  stackPracticeTutorial
//
//  Created by Jin Hyeok Choi on 2021/07/12.
//

import SwiftUI

enum TabIndex {
    case home, cart, profile
//    case cart
//    case profile
}

struct MyCustumTabView: View {
    
    @State var tabIndex : TabIndex
    @State var largerScale: CGFloat = 1.4
    
    func changeTabViewSub(tabIndex: TabIndex) -> TabViewSub{
        switch tabIndex{
        case .home:
            return TabViewSub(title: "홈", bgColor: .green)
        case .cart:
            return TabViewSub(title: "장바구니", bgColor: .yellow)

        case .profile:
            return TabViewSub(title: "프로필", bgColor: .orange)
        default:
            return TabViewSub(title: "홈", bgColor: .green)

        }
        
    }
    
    func changeIconColor (tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home:
            return Color.green
        case .cart:
            return Color.yellow
        case .profile:
            return Color.orange
        default:
            return Color.green
        }
    }
    
    func calcCircleBgPosition(tabIndex: TabIndex, geometry: GeometryProxy) -> CGFloat{
        switch tabIndex {
        case .home:
            return -(geometry.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return geometry.size.width / 3
        default:
            return -(geometry.size.width / 3)
        }
    }
    
    
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack(alignment: .bottom){
                self.changeTabViewSub(tabIndex: self.tabIndex)
                
                
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: self.calcCircleBgPosition(tabIndex: self.tabIndex, geometry: geometry) ,y: 15)
                
                
                
                HStack(spacing: 0){
                    Button(action:{
                        print("clicked")
                        
                        withAnimation{
                            self.tabIndex = .home
                        }
                        
                    }){
                        Image(systemName: "house")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .home ? self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .home ? self.changeIconColor(tabIndex: self.tabIndex): Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                    }.background(Color.black)
                    
                    
                    Button(action:{
                        print("clicked")
                        withAnimation{
                            self.tabIndex = .cart
                        }
                        
                    }){
                        Image(systemName: "cart")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .cart ? self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .cart ? self.changeIconColor(tabIndex: self.tabIndex): Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                    }.background(Color.black)
                    
                    
                    Button(action:{
                        print("clicked")
                        withAnimation{
                            self.tabIndex = .profile
                        }
                        
                    }){
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .profile ? self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .profile ? self.changeIconColor(tabIndex: self.tabIndex): Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                    }.background(Color.black)
                }
                
                
            }//zstack
        }//gr
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MyCustumTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustumTabView(tabIndex: .home)
    }
}
