//
//  Home.swift
//  pokedex
//
//  Created by Zahra chouchane on 22/6/2022.
//

import SwiftUI

struct Home: View {
    
    @State var selectedTab = "house"
    
    var body: some View {
        let rows = [
            GridItem(.adaptive(minimum: 140))
        ]
        ZStack(alignment: .bottom)
        {
           
           backGround()
            
            
            VStack{
                
                ZStack{
                    Image("bgpoke")
                        .resizable()
                        .frame(width: 250, height: 250)
                        .rotationEffect(.degrees(-17))
                        .offset(x: 180, y: -20)
                       
                
                    
                VStack(alignment: .leading, spacing: 30){
                   
                    Text("What pokémon are you looking for?")
                        .foregroundColor(.white.opacity(0.85))
                        .font(.system(size: 27,weight: .bold))
                        .padding(.leading, 20)
   
                    
                    searchBar()
                    
                    
                }.padding(.top,23)
                    
                    
                }
                
               
                LazyVGrid(columns: rows, spacing: 0){
                    
                    cardView(name: "Pokédex", startingColor: "startingRed", endingColor: "endingRed", imgName: "pokeball-icon", degrees: 12)
                    
                    cardView(name: "Pokédex", startingColor: "startingYellow", endingColor: "endingYellow", imgName: "flash", degrees: -3)
                    
                    cardView(name: "Evolutions", startingColor: "startingGreen", endingColor: "endingGreen", imgName: "dna", degrees: 20)
                    
                 
                    
                    cardView(name: "Locations", startingColor: "startingBlue", endingColor: "endingBlue", imgName: "pin-2", degrees: 9)
                }.padding(.top, -20)
                
                
                
               VStack(alignment: .leading){
                    Text("Watch")
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .heavy))
                    
                    Divider()
                        .overlay(.gray
                        )
                        .frame(width: 390 )
                    
                    
                        
                    
                    HStack{
                    
                        ScrollView(.horizontal)
                        {
                            HStack(spacing : 35){
                            PokemonEpisode(ImgName: "ep2", title: "Pokémon Master", series: "Journeys: The Series", year: "2021", type: "Series", numberLength: "10 EP")
                                
                                PokemonEpisode(ImgName: "pokemonvacation", title: "Pokémon Vacation", series: "Pokémon go vacation", year: "1997", type: "Series", numberLength: "2 EP")
                                
                                PokemonEpisode(ImgName: "ep1", title: "Pokémon Master", series: "Pokémon: originals", year: "1995", type: "Series", numberLength: "109 EP")
                                
                                PokemonEpisode(ImgName: "ep4", title: "Pokémon Mewto", series: "Journeys: The Series", year: "2021", type: "Movie", numberLength: "1h 38m")
                            
                           
                            }
                        }
                      
                     
                        
                            
                        
                    }
                    
                }.padding(.top ,40)
                
          
                    
                
               customTabBar(selectedTab: $selectedTab)
                   .frame(alignment: .bottom)
                   .offset(y: -13)
                   
                    
                
                Spacer()
                
            
            
               
            }
        
           
               
  
                 
        
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}



struct backgroundPicture: View
{
   var picName: String
    var width: CGFloat
    var height : CGFloat
    var opacity: Double
   // var alignment : Alignment
    
    var body: some View {
        
    Image(picName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: width, height: height,alignment: .topTrailing)
        .opacity(opacity)
    }
    
}



struct searchBar: View
{
    @State var searchText: String = ""
    var body: some View {
        HStack{
        Image(systemName: "magnifyingglass")
            .foregroundColor(Color.white)
            TextField("Seach Pokémon",text: $searchText)
                .foregroundColor(.gray)
                .overlay(
                Image(systemName: "xmark.circle.fill")
                    .padding()
                    .offset(x:10)
                    .foregroundColor(Color.gray)
                    .opacity(searchText.isEmpty ? 0.0 : 1.0)
                    .onTapGesture {
                        searchText = ""
                    }
                ,alignment: .trailing
                )
                
                
                
               
        }
        .font(.headline)
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 25)
            .fill(Color("searchBarColor")))
        .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 0)
        
        
    }
        
}

struct cardView: View
{
    var name: String
    var startingColor: String
    var endingColor: String
    var imgName: String
    var degrees: Double
   
   // var alignment : Alignment
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
             .fill(LinearGradient(gradient:
                                        Gradient(colors: [ Color(startingColor), Color(endingColor)]),
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing))
            
            
            HStack(spacing: 22){
                Text(name)
                        .foregroundColor(.white.opacity(0.85))
                        .font(.system(size: 16,weight: .bold))
                        .frame(alignment: .topLeading)
                Image(imgName)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .shadow(radius: 10, y: 20)
                    .rotationEffect(.degrees(degrees))
                    .offset(y: -22)
                      
            }
                         
                                     
                
        }.padding()
            .frame(width: 230, height: 120)
     
        
    }
    
}


struct PokemonEpisode: View
{
    var ImgName: String
    var title: String
    var series: String
    var year: String
    var type: String
    var numberLength: String

    var body: some View {
        VStack(alignment: .leading){
            ZStack {
           
                 
            Image(ImgName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 240, height: 140)
                .cornerRadius(20)
                .brightness(-0.2)
               
                
                
                Image("playbtn")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
            
           
                
            }
            VStack{
            Text(title)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .bold))
            
            Text(series)
                .foregroundColor(.gray)
                .font(.system(size: 13, weight: .bold))
            
            HStack{
                Text(year)
                    .foregroundColor(.gray)
                    .font(.system(size: 13, weight: .bold))
                Divider()
                    .overlay(.gray
                    )
                    .frame(height: 10 )
                Text(type)
                    .foregroundColor(.gray)
                    .font(.system(size: 13, weight: .bold))
                Divider()
                    .overlay(.gray
                    )
                    .frame(height: 10 )
                Text(numberLength)
                    .foregroundColor(.gray)
                    .font(.system(size: 13, weight: .bold))
            }
                
            }
            
            
                
                
        }.padding(.top,20)
        
    }
    
}
