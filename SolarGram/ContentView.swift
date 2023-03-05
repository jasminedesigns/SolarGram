//
//  ContentView.swift
//  SolarGram
//
//  Created by Jasmine Lee on 2/27/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
//creating a tab bar
        TabView {
            PhotosView()
                .tabItem {
//I added a photo for the icon but wasn't sure the exact photo to use from the example so I used the photo one
                    Image(systemName: "photo")
                    Text("Photos")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
