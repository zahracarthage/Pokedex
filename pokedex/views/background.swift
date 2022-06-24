//
//  background.swift
//  pokedex
//
//  Created by Zahra chouchane on 22/6/2022.
//

import SwiftUI

struct backGround: View {
    var body: some View {
        
        LinearGradient(gradient:
                        Gradient(colors: [Color("trailingColorbg"), Color("trailingColorbg")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
       
        
       
    }
    
    
}
