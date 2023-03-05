//
//  ProfileView.swift
//  SolarGram
//
//  Created by Jasmine Lee on 3/4/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        //adding the photo view layout in the profile tab
        VStack {
//adding the profile picture and name
            Image("profilepic")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(.top, 20)
            
            Text("Ash Ketchum")
                .font(.system(size: 30).bold())
                .padding(10)
            
            ScrollView {
                LazyVGrid(columns: [.init(.adaptive(minimum: 100, maximum: .infinity), spacing: 3)], spacing: 3) {
                    ForEach(1..<5) { ix in
                        Image("pokemon_\(ix)")
                        //here I added modifers to the images so that they have a square shape. At first the images would overlap each other which is why I had to add the flexible frame and clip the images.
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                            .clipped()
                            .aspectRatio(1, contentMode: .fit)
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
