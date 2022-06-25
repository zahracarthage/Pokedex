//
//  About.swift
//  pokedex
//
//  Created by Zahra chouchane on 23/6/2022.
//

import SwiftUI

struct About: View {
    var body: some View {
     
        
        VStack{
           
            contentAbout()
            
           
            HeightAndWeightInfos()
                
            
        }.padding()
            
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
    }
}


struct contentAbout: View {
    var body: some View{
        Text("Having been domesticated from birth, Bulbasaur is regarded as both a rare and well-behaved Pokémon.")
            .foregroundColor(.white).opacity(0.7)
            .font(.system(size: 16, weight: .medium))
            .padding(.top, 10)
           
        
            
          
}
    
    
}

struct HeightAndWeightInfos: View {
    
    let size:CGFloat = 50

    var body: some View{
        
            
 
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 370, height: 85 )
                        .foregroundColor(Color("cardcolor"))
                    
                    
                    
                    HStack{
                        VStack{
                            HStack{
                                Image("weight")
                                    .resizable()
                                    .frame(width: 20, height: 20 )
                                Text("6.9 kg (15.2 lbs)")
                                    .foregroundColor(.white).opacity(0.5)
                                    .font(.system(size: 16, weight: .bold))
                                
                            }
                            Text("Weight")
                                .foregroundColor(.white).opacity(0.4)
                                .font(.system(size: 16, weight: .bold))
                            
                        }
                        Divider()
                            .frame(width: 0.6, height: 25 )
                            .overlay(.white.opacity(0.5)
                            )
                            
                        
                        VStack{
                            HStack{
                                Image("ruler")
                                    .resizable()
                                    .frame(width: 20, height: 20 )
                                Text("0.7 m (2'04)")
                                    .foregroundColor(.white).opacity(0.5)
                                    .font(.system(size: 16, weight: .bold))
                                
                                
                            }
                            Text("Height")
                                .foregroundColor(.white).opacity(0.4)
                                .font(.system(size: 16, weight: .bold))
                        }
                      
                        
                    }
                    ZStack{
                        Ellipse()
                                .frame(width: 500, height: 90)
                                .foregroundColor(Color("trailingColorbg")).opacity(0.7)
                                .rotationEffect(Angle(degrees: 360))
                                .offset(y:40)
                                .blur(radius: 9)
                                .edgesIgnoringSafeArea(.all)
                             
                                

                    HStack(spacing: -4){
                        Text("Scroll down")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                        
                        Image("scroll")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .offset(y: 2)
                    }.offset(y: 55)
                        
                        
                   

                            
                        
                }
                    
                   
                                    
                    
                      
                              
                }
                .padding(.bottom, -40)
                .padding(.top, 10)
               
           
                                 
                                             
                        
                }
             

    
}
