//
//  PokemonstatsView.swift
//  pokedex
//
//  Created by Zahra chouchane on 24/6/2022.
//

import SwiftUI

struct PokemonstatsView: View {
    var body: some View {
        
        ZStack{
            backGround()
            VStack{
                TopBar(header: "Bulbasaur", fontSize: 30, headerColor: .white)
                
                ZStack{
                    pokemonD().offset(y:-200)
                    tabcustom().offset(y: 280)
                }
               
               // backgroundRectange()
               //
                
        }
            Spacer()
            
        }
         
       
    }
}

struct PokemonstatsView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonstatsView()
    }
}


struct pokemonD: View {

    var body: some View{
        
        VStack{
            ZStack{
                bgEclipse()
                Bgrectangle()
               
                   ImgandShadow()
            }
           
                        
              
        }
}
}


struct bgEclipse: View {
    let size = 200.0

    var body: some View {
        ZStack {
            Ellipse()
                .frame(width: size * 2, height: size * 2)
                .foregroundColor(.mint).opacity(0.7)
                .offset(x: -size * 0.01)
                .rotationEffect(Angle(degrees: -45
                                     ))
            
            Ellipse()
                .frame(width: size *  2, height: size * 2)
                .foregroundColor(.yellow).opacity(0.28)
                .offset(x: size * 0.2)
                .rotationEffect(Angle(degrees: -50))
        }
        .blur(radius: 80)
    }
}

struct Bgrectangle: View {
    var body: some View {
        Color("trailingColorbg").opacity(0.35)
        // Color.white
            .frame(width: .infinity, height: 550)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 10)
            .offset(y:280)
    }
}

struct ImgandShadow: View {
    var body: some View {
        VStack{
            
            Image("bulbasaur")
                .resizable()
                .frame(width: 200, height: 200)
            
            
            Ellipse()
                .foregroundColor(.black)
                .frame(width: 220, height: 45).opacity(0.4).blur(radius: 7)
                .offset(y:-30)
        }
    }
}
