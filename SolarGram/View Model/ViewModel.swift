//
//  ViewModel.swift
//  SolarGram
//
//  Created by Jasmine Lee on 3/26/23.
//
//  define a PostViewModel that holds an array of Post objects, and has methods to add or remove posts from that array

import Foundation
import SwiftUI
import UIKit

class ViewModel: ObservableObject {
    @Published var model: PublicPosts = PublicPosts()
    
    var publicPosts: [Post] {
        model.sampleData
        
    }
    
    func setFavorite(_ post: Post) {
        //set favorite
        model.toggleFavorite(post)
    }
    
    func addPostFrom(image:UIImage?) {
        
        guard let image else {return}
        
        DispatchQueue.main.async {
            let newPost = Post(photo: Image("photo7"), description: "Something New", isFavorite: false, author: PublicPosts.currentUser)
            self.model.add(post: newPost)
        }
    }
    
    func deletePost(_ post: Post) {
        model.deletePost(post)
    }
}
    
