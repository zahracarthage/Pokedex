//
//  glassmorphism.swift
//  pokedex
//
//  Created by Zahra chouchane on 25/6/2022.
//

import SwiftUI

struct glassmorphism: View {
    var body: some View {
        

        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0.0)]), startPoint: .top, endPoint: .bottom)
            
            
            LinearGradient(gradient: Gradient(colors: [Color(
                #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).opacity(0.4), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.6)]),startPoint: .topLeading, endPoint: .bottomLeading)
            
            
            popUpView()
                                 
                                                       
        }.edgesIgnoringSafeArea(.all
        )
        
    }
}

struct glassmorphism_Previews: PreviewProvider {
    static var previews: some View {
        glassmorphism()
    }
}

struct popUpView: View {
    var body: some View {
        
        ZStack(alignment: .topLeading){
            Color.white.opacity(0.35)
                .frame(width: 300, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 10)
            
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Glassmorphism")
                    .font(.system(size: 24, weight: .black, design: .rounded))
                
                Text("wow, I'm doing something cool".uppercased())
                    .font(.caption)
                
                Text("This could be your body text")
                    .font(.footnote)
                
                
            }.padding()
                .frame(width: 300, height: 400)
                .foregroundColor(.black.opacity(0.8))
            
            
            
        }
    }
}
