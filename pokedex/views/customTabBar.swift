//
//  customTabBar.swift
//  pokedex
//
//  Created by Zahra chouchane on 22/6/2022.
//

import SwiftUI

struct customTabBar: View {
    
    @Binding var selectedTab: String

    @State var tabPoint: [CGFloat] = []
    var body: some View {
        HStack(spacing : 0){
            
            
            TabBarButton(image: "house", selectedTab: $selectedTab, tabPoints: $tabPoint)
            TabBarButton(image: "bookmark", selectedTab: $selectedTab, tabPoints: $tabPoint)
            TabBarButton(image: "message", selectedTab: $selectedTab, tabPoints: $tabPoint)
            TabBarButton(image: "person", selectedTab: $selectedTab, tabPoints: $tabPoint)
            
        }
        .padding()
        //.hoverEffect(style: style)
        
        .background(
       
            // Color.gray.blur(radius: 30)
            Color.gray.opacity(0.1)
                          
                
                .clipShape(tabCurve(tabPoint: getCurvePoint() - 15)))
        .overlay(
            Image("pokeball")
                .frame(width: 20, height: 15)
                .offset(x: getCurvePoint() - 25)
           
            
            ,alignment: .bottomLeading
                
        )
        .cornerRadius(30)
        .padding(.horizontal)
    }
    
    func getCurvePoint() -> CGFloat
    {
        if tabPoint.isEmpty{
            return 10
        }
        else {
            switch selectedTab {
            case "house" :
                return tabPoint[0]
            case "bookmark" :
                return tabPoint[1]

            case "message" :
                return tabPoint[2]

            default:
                return tabPoint[3]
                

            }
        }
    }
}

struct customTabBar_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct TabBarButton : View{
    var image : String
    @Binding var selectedTab: String
    @Binding var tabPoints: [CGFloat]
    var body: some View{
        GeometryReader{
            reader -> AnyView in
            let midx = reader.frame(in: .global).midX
            
            DispatchQueue.main.async {
                if tabPoints.count <= 4 {
                    tabPoints.append(midx)
                }
            }
            
            return AnyView (
                Button(action: {
                    withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5, blendDuration: 0.5))
                                  {
                        
                        selectedTab = image
                    }
                    
                }, label: {
                    
                    Image(systemName: "\(image)\(selectedTab == image ? ".fill" : "")")
                        .font(.system(size:25, weight: .semibold))
                        .foregroundColor(selectedTab == image ? .white : .white.opacity(0.5))
                        .offset(y : selectedTab == image ? -10 : 0)
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            )
           
        }
        .frame(height: 50)
    }
}


