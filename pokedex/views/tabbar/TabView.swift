//
//  TabView.swift
//  pokedex
//
//  Created by Zahra chouchane on 23/6/2022.
//

import SwiftUI

struct tabcustom: View {
    
    @State var currentTab: Int = 0
    
    var body: some View {
        ZStack(alignment: .top){
            TabView(selection: self.$currentTab)
            {
                About().tag(0)
                Stats().tag(1)
                moves().tag(2)
                evolution().tag(3)
                locations().tag(4)
            }
            .tabViewStyle(.page(indexDisplayMode: .never
                               ))
            .edgesIgnoringSafeArea(.all)
            
            tabBarView(currentTab: self.$currentTab)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        tabcustom()
    }
}



struct tabBarItem: View {
    let namespace : Namespace.ID
    @Binding var currentTab: Int
    
    var tabBarItemname: String
    var tab:Int
    
    var body: some View {
        Button{
            self.currentTab = tab
            
        }label: {
           
                VStack{
                    Spacer()
                    Text(tabBarItemname)
                        .font(.system(size: 16, weight: .semibold))
                    if currentTab == tab {
                        Color.black
                         
                            .frame(width: 30 ,height: 3)
                            .cornerRadius(50)
                           .matchedGeometryEffect(id: "underline", in: namespace,
                                            properties: .frame)
                    }
                    else {
                        Color.clear.frame(height: 2)
                    }
                }
               .animation(.interactiveSpring(response: 0.4, dampingFraction: 0.5, blendDuration: 0.5), value: self.currentTab)
            
                
            }
        
    }

}


struct tabBarView: View{
    @Namespace var namespace

    
    @Binding var currentTab: Int
    var tabBarOptions: [String] = ["About","Stats","Moves","Evolutions","Locations"]
    
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 24){
                
                ForEach(Array(zip(self.tabBarOptions.indices, self.tabBarOptions)),
                        id: \.0,
                        content: {
                    index, name in
                    tabBarItem(namespace: namespace.self, currentTab: self.$currentTab,
                               tabBarItemname: name,
                               tab: index)
                }
                
                
                )
             
                
            }.padding(.horizontal)
            
               
               
        }
        .background(.white)
        .edgesIgnoringSafeArea(.all)
        .frame(height: 40)
    }
}

