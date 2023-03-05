//
//  PhotosView.swift
//  SolarGram
//
//  Created by Jasmine Lee on 3/5/23.
//

import SwiftUI

struct PhotosView: View {
    var body: some View {
        //adding list view of all the images, I originally tried to do the ForEach, but I wasn't sure how to format that with text and image together
        List {
            //added the Vstack to get rid of the grey lines in between the name of the poster, photo, caption and heart
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image("profilepic")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .padding(.top, 10)
                    Text("Ash Ketchum")
                        .font(.system(size: 15).bold())
                        .padding(.top, 10)
                }
                Image("pokemon_1")
                    .resizable()
                    .scaledToFill()
                    .padding([.leading, .trailing], -10.0)
                
                Text("Wild pickachu spotting! #funnyhair")
                Image(systemName: "heart")
                    .frame(width: 10, height: 10)
                    .padding([.top, .leading, .bottom], 5)
                
            }
//Adding another post to the list
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image("profilepic_2")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .padding(.top, 10)
                    Text("Misty")
                        .font(.system(size: 15).bold())
                        .padding(.top, 10)
                }
                Image("pokemon_5")
                    .resizable()
                    .scaledToFill()
                    .padding([.leading, .trailing], -70.0)
                
                Text("I love all water pokemon!")
                Image(systemName: "heart")
                    .frame(width: 10, height: 10)
                    .padding([.top, .leading, .bottom], 5)
            }
            
//Adding 3rd post to the list
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image("profilepic_3")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .padding(.top, 10)
                    Text("Team Rocket")
                        .font(.system(size: 15).bold())
                        .padding(.top, 10)
                }
                Image("pokemon_6")
                    .resizable()
                    .scaledToFill()
                    .padding([.leading, .trailing], -100.0)
                
                Text("We're blasting off again!")
                Image(systemName: "heart")
                    .frame(width: 10, height: 10)
                    .padding([.top, .leading, .bottom], 5)
            }
            
            .listStyle(.plain)
            
        }
//I want the edges of the photo to reach the edges of the screen and stretch to the sides
        .padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
        
    }
    
    struct PhotosView_Previews: PreviewProvider {
        static var previews: some View {
            PhotosView()
        }
    }
    
}
