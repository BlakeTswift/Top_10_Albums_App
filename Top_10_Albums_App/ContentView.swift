//
//  ContentView.swift
//  Top_10_Albums_App
//
//  Created by Trytten, Blake - Student on 9/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea(edges: .all)
                .blur(radius: 30)
            ScrollView {
                Text("Hello")/Users/80523/Downloads/Bruno_Ace,Rubik_Burned,Rubik_Distressed/Bruno_Ace/BrunoAce-Regular.ttf
                    .font(Font.custom("BrunoAce-Regular", size: 100))
                
                Card_Normal (cover:("WETDREAM"),description: "uhduahudhaudhuoahdouwahdoawhdioawjiawjidajdopwadijdwoajdiawjdiawjdioawjdiowajdiaowdjawiodjawidjwaidjawiodjoiawdjwaiodjwaiowd",artist_Name: "WillyRodriguezWasTaken",artist_picture:("WRWT"),Title: "WETDREAM", Rank:10,Theme: .tanWet)
                
                Card_Normal (cover:("BoyHood"),description: "uhduahudhaudhuoahdouwahdoawhdioawjiawjidajdopwadijdwoajdiawjdiawjdioawjdiowajdiaowdjawiodjawidjwaidjawiodjoiawdjwaiodjwaiowd",artist_Name: "Liam McCay",artist_picture:("Liam"),Title: "boyhood", Rank:9,Theme: .boyhoodTan)
                
                Card_Normal (cover:("46 Chambers"),description: "uhduahudhaudhuoahdouwahdoawhdioawjiawjidajdopwadijdwoajdiawjdiawjdioawjdiowajdiaowdjawiodjawidjwaidjawiodjoiawdjwaiodjwaiowd",artist_Name: "The WU-TANG clan",artist_picture:("wu-tang"),Title: "ENTER WU-TANG", Rank:8,Theme: .brownTang)
                
                Card_Normal (cover:("TDNE"),description: "uhduahudhaudhuoahdouwahdoawhdioawjiawjidajdopwadijdwoajdiawjdiawjdioawjdiowajdiaowdjawiodjawidjwaidjawiodjoiawdjwaiodjwaiowd",artist_Name: "Lil Darkie",artist_picture:("lildarkie"),Title: "THISDOESNOTEXIST", Rank:7,Theme: .darkie)
                
                Card_Normal (cover:("Vanisher"),description: "uhduahudhaudhuoahdouwahdoawhdioawjiawjidajdopwadijdwoajdiawjdiawjdioawjdiowajdiaowdjawiodjawidjwaidjawiodjoiawdjwaiodjwaiowd",artist_Name: "Quadeca ",artist_picture:("Quadeca"),Title: "Vanisher", Rank:6,Theme: .blueQuad)
                
                Card_Normal (cover:("Igor"),description: "uhduahudhaudhuoahdouwahdoawhdioawjiawjidajdopwadijdwoajdiawjdiawjdioawjdiowajdiaowdjawiodjawidjwaidjawiodjoiawdjwaiodjwaiowd",artist_Name: "Tyler The Creator",artist_picture:("TTC"),Title: "Igor", Rank:5,Theme: .pinkIgor)
                
                Card_Normal (cover:("GKMC"),description: "uhduahudhaudhuoahdouwahdoawhdioawjiawjidajdopwadijdwoajdiawjdiawjdioawjdiowajdiaowdjawiodjawidjwaidjawiodjoiawdjwaiodjwaiowd",artist_Name: "Kendick Lamar ",artist_picture:("Kendric"),Title: "good kid maad city", Rank:4,Theme: .greenWall)
                
                Card_Normal (cover:("NYM"),description: "uhduahudhaudhuoahdouwahdoawhdioawjiawjidajdopwadijdwoajdiawjdiawjdioawjdiowajdiaowdjawiodjawidjwaidjawiodjoiawdjwaiodjwaiowd",artist_Name: "Will Toledo ",artist_picture:("will"),Title: "Nervous Young Men", Rank:3,Theme: .tanWall,)
                
                Card_Normal (cover:("MBDTF"),description: "uhduahudhaudhuoahdouwahdoawhdioawjiawjidajdopwadijdwoajdiawjdiawjdioawjdiowajdiaowdjawiodjawidjwaidjawiodjoiawdjwaiodjwaiowd",artist_Name: "Kanye West ",artist_picture:("ye"),Title: "My Beautiful Dark Twisted Fantasy", Rank:2,Theme: .yeRed)
                
                Card_Normal (cover:("Twin Fatansy"),description: "uhduahudhaudhuoahdouwahdoawhdioawjiawjidajdopwadijdwoajdiawjdiawjdioawjdiowajdiaowdjawiodjawidjwaidjawiodjoiawdjwaiodjwaiowd",artist_Name: "Will Toledo ",artist_picture:("will"),Title: "Twin Fantasy", Rank:1,Theme: .white)
                
                
                
            }
        }
    }
    
    
    
    struct Card_Normal: View {
        
        var cover: String
        var description: String
        var artist_Name: String
        var artist_picture: String
        var Title: String
        var Rank: Int
        var Theme: Color
        //var BlackText: Bool
        //var artist_font: Font
        
        var body: some View {
            VStack {
                
                VStack {
                    ZStack {
                        Image(cover)
                            .resizable()
                            .frame(width: 250, height: 250)
                            .border(.black,width: 3)
                            .padding(45)
                        Text(Title)
                            .font(.title)
                            .foregroundColor(.primary)
                            .offset(x: 0, y: 160)
                            .fontWeight(.black)
                            .multilineTextAlignment(.center)
                    }
                    
                    HStack {
                        Image(artist_picture)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60 , height: 60,)
                            .clipShape(Circle())
                            .padding(.top,20)
                        
                        
                        Text(artist_Name)
                            .font(.title2)
                            .foregroundColor(.secondary)
                        
                        
                        Spacer(minLength: 0)
                    }.padding(.horizontal)
                    Text(description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding()
                        .background(.white)
                        .border(.black, width: 2)
                        .padding(.bottom)
                        .padding(.horizontal)
                }
                .frame(minWidth: 0,maxWidth: .infinity,minHeight: 100)
                .background(Theme)
                .padding(.horizontal, 30)
                
                
                Text("#\(Rank)")
                    .frame(width: 70, height: 100)
                    .foregroundStyle(.white)
                    .background(Circle())
                    .foregroundColor(Rank_Color())
                    .offset( x:-160, y: -620)
                    .font(.system(size: 30))
                    .fontWeight(.black)
            }
        }
        func Rank_Color() -> Color {
            if Rank == 1 {
                return .yellow
            }
            if Rank == 2 {
                return .green
            }
            if Rank == 3 {
                return .brown
            if Rank <= 5 {
                    return .blue
                }
            }
                else
                {
                    return .gray
                }
                
            }
        
        }
        }
    

#Preview {
    ContentView()
}
