//
//  ContentView.swift
//  SolarGram
//
//  Created by Jasmine Lee on 2/27/23.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @StateObject private var viewModel = ViewModel()

    @State private var selection: Tab = .photos
    @State private var isShowingImagePicker = false
    @State private var isShowingCameraPicker = false
    
    enum Tab {
        case photos
        case profile
    }
    
    var body: some View {
            NavigationView {
                TabView(selection: $selection) {
                    PhotoList()
                        .tabItem {
                            Label("Photos", systemImage: "photo.stack")
                        }
                        .tag(Tab.photos)
                    ProfileView(posts: Post(photo: Image(systemName: "ash"), description: "My profile", isFavorite: true, author: User(name: "Ash", photoID: "ash")))
                        .tabItem {
                            Label("Profile", systemImage: "person.crop.circle")
                        }
                        .tag(Tab.profile)
                }
            .navigationBarTitleDisplayMode(.inline)
                        .navigationBarItems(leading:
                            Button(action: {
                                isShowingImagePicker = true
                            }) {
                                Image(systemName: "plus")
                            }
                        )
                        .sheet(isPresented: $isShowingImagePicker) {
                            ImagePicker(viewModel: ViewModel())
                        }
                        .sheet(isPresented: $isShowingCameraPicker) {
                            CameraPicker(viewModel: ViewModel())
                        }
                        }
                    }
                }
            

            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
