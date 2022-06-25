//
//  PokemonView.swift
//  pokedex
//
//  Created by Zahra chouchane on 22/6/2022.
//

import SwiftUI

struct PokemonView: View {
    var body: some View {
        ZStack{
            backGround()
            
            VStack{
                
                
   
                TopBar(header: "#001", fontSize: 20, headerColor: .white)
  
                    PokemonDetails()
                    
                  
                        tabcustom()
                
            
              
                
               
                
             
                
                
            }
            Spacer()
      
           
        }
      
    
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
    }
}

struct TopBar: View {
    var header: String
    var fontSize: Double
    var headerColor: Color
    
    var body: some View{
        
        HStack {
            Button(action: {}, label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                   
            })
            Spacer()
            
            Text(header)
                .foregroundColor(headerColor)
                .font(.system(size: fontSize, weight: .bold))
            Spacer()
      
            Button(action: {}, label: {
                Image(systemName: "heart.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                   
            })
          
        }.padding()

           
      
    }
}

struct PokemonDetails: View {
    let size = 300.0

    var body: some View{
    
        
        VStack{
            ZStack{
                ZStack {
                    
                            Ellipse()
                                .frame(width: size, height: size * 1.5)
                                .foregroundColor(.mint).opacity(0.7)
                                .offset(x: -size * 0.01)
                                .rotationEffect(Angle(degrees: -45
                                                    ))

                            Ellipse()
                                .frame(width: size, height: size * 1.2)
                                .foregroundColor(.yellow).opacity(0.4)
                                .offset(x: size * 0.2)
                                .rotationEffect(Angle(degrees: -50))
                        }
                        .blur(radius: 80)

                    
                  Image("bulbasaur")
                      .resizable()
                      .frame(width: 260, height: 260)
                      .offset(y: -20)
               
            }.padding(.top,-40)
            
            VStack{
                Text("Bulbasaur")
                   .font(Font.custom("Poppins-Bold", size: 30))
                    .foregroundColor(.white)
                    
                
                Text("Seed Pokémon")
                    .foregroundColor(.gray)
                    .font(.system(size: 15, weight: .medium))
                    .padding(.top,1)
                
                HStack(spacing: -14){
                    PokemonTypeCard(type: "Grass", color: "Bulbacolor", picName: "plant")
                    
                    PokemonTypeCard(type: "Poison", color: "poison", picName: "poison")
                }
                        
            
               
            }.padding(.top,-70)
          
    }
    
}


struct PokemonTypeCard: View
{
    /* var name: String
    var color: String
    var imgName: String*/
   
   // var alignment : Alignment
    
    var type: String;
    var color: String;
    var picName: String;
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 50)
                .stroke(Color(color)
                                        )

            HStack(spacing: 10){
                
                Image(picName)
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(type)
                        .foregroundColor(Color(color))
                        .font(.system(size: 17,weight: .bold))
                
                               
            }
                             
                
        }.padding()
            .frame(width: 150, height: 75)
     
        
    }
    
}

}


