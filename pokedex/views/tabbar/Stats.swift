//
//  Stats.swift
//  pokedex
//
//  Created by Zahra chouchane on 23/6/2022.
//

import SwiftUI

struct Stats: View {
    var body: some View {
          
        
        VStack(alignment: .leading){
           
        
            StatsView().padding(.top,120)
                .offset(x: 30)
                
        
               
            
            Paragraph().padding(.top, 20)
                .offset(x: 30)
            typeDescription()
            
        }.offset(y: -160)
            .padding()
        
           
            
           
       
        
    }
}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        PokemonstatsView()
    }
}


struct StatsView : View {
    

    var body: some View{
        HStack(spacing: 23){
            
            VStack(alignment: .leading ,spacing: 11){
                statText(stat: "HP")
                statText(stat: "Attack")
                statText(stat: "Defense")
                statText(stat: "Sp. Atk")
                statText(stat: "Sp. Def")
                statText(stat: "Speed")




            }
            VStack(spacing: 11){
                statNumber(statNumber: "45")
                statNumber(statNumber: "49")
                statNumber(statNumber: "49")
                statNumber(statNumber: "65")
                statNumber(statNumber: "65")
                statNumber(statNumber: "45")


            }
            VStack( spacing: 28){
                statSlider(percentage: 45, sliderValue: 45)
                statSlider(percentage: 49, sliderValue: 49)
                statSlider(percentage: 49, sliderValue: 49)
                statSlider(percentage: 65, sliderValue: 65)
                statSlider(percentage: 65, sliderValue: 65)
                statSlider(percentage: 45, sliderValue: 45)
                




            }
        }
   
          
    }
}
    
    struct statText: View{

        
        var stat: String

        var body: some View{
            Text(stat)
                .foregroundColor(.white)
                .opacity(0.4)
                .font(.system(size: 16, weight: .semibold))
                .frame(alignment: .leading)
            
        }
        
    }


struct statNumber: View{
    
    var statNumber: String

    var body: some View{
        Text(statNumber)
            .foregroundColor(.white)
            .font(.system(size: 16, weight: .bold))

        
    }
    
}


struct statSlider: View{
    var percentage: Double
    
    @State var sliderValue: Double
    
    var body: some View{
        
       /* Slider(value: $sliderValue , in: 0...100)
            .frame(width: 250, height: 4)
            .tint(percentage > 50 ?  Color("slidercolor") : .gray)*/
        
        
        ProgressView(value: percentage, total: 100)
            .tint(percentage > 50 ?  Color("slidercolor") : .gray)
        
            .frame(width: 250, height: 3)
            .scaleEffect(x: 1, y: 1.6, anchor: .center)
            //.cornerRadius(50)




        
    }
    
}
    
    

struct Paragraph : View{
    var body: some View{
        
        
        Text("Based on this Pokémon's stats, we consider the best nature for Bulbasaur to have is ").font(.system(size: 15))
            .foregroundColor(.white.opacity(0.5))
        + Text("Sassy")
            .font(.system(size: 15.5))
                .foregroundColor(.white.opacity(0.7)) +
        Text(", this will increase it's ")
            .font(.system(size: 15))
                .foregroundColor(.white.opacity(0.5)) +
        Text("Sp. Def ")
            .font(.system(size: 15.5))
            .foregroundColor(.white.opacity(0.7)) +
        Text("and decrease its ") .font(.system(size: 15))
            .foregroundColor(.white.opacity(0.5)) +
        Text("Speed ") .font(.system(size: 15.5))
            .foregroundColor(.white.opacity(0.7)) +
        Text("stats. ") .font(.system(size: 15))
            .foregroundColor(.white.opacity(0.5))
        
            
            
  

    }
}


struct typeDescription: View{
    var body: some View {
        
        ZStack{
        VStack(alignment: .leading){
           
            
            Text("Type Defenses")
                .foregroundColor(.white.opacity(0.6))
                .font(.system(size: 18, weight: .bold))
              
            
            Divider()
                .frame(width: 380, height: 1 )
                .overlay(.white.opacity(0.1))
                .padding(.bottom,10)
            
            

            Text("The effectiveness of each type on Bulbasaur")
                .foregroundColor(.white.opacity(0.4))
                .font(.system(size: 15, weight: .regular))
            }
            
            Rectangle()
                    .frame(width: 450, height: 100)
                    .foregroundColor(Color("trailingColorbg")).opacity(0.4)
                    .offset(y:30)
                    .blur(radius: 9)
                    .edgesIgnoringSafeArea(.all)
                

            
            
            
       
        }.padding(.top, 30)
    }
}
