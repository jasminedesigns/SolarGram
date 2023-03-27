//
//  Model.swift
//  SolarGram
//
//  Created by Jasmine Lee on 3/26/23.
//

import Foundation
import SwiftUI

// PublicPosts data


struct PublicPosts {
    static let currentUser: User = User(name: "Ash", photoID: "ash")
    var sampleData: [Post] = [
        Post(photo: Image("photo1"), description: "Something really great", isFavorite: false, author: PublicPosts.currentUser),
        Post(photo: Image("photo2"), description: "Something really great", isFavorite: false, author: PublicPosts.currentUser),
        Post(photo: Image("photo3"), description: "Something really great", isFavorite: false, author: PublicPosts.currentUser),
        Post(photo: Image("photo4"), description: "Something really great", isFavorite: false, author: PublicPosts.currentUser),
        Post(photo: Image("photo5"), description: "Something really great", isFavorite: false, author: User(name: "Misty", photoID: "misty")),
        Post(photo: Image("photo6"), description: "Something really great", isFavorite: false, author: User(name: "Team Rocket", photoID: "teamrocket"))
    ]

mutating func toggleFavorite(_ post: Post) {
    let postIndex = sampleData.firstIndex { p in
        p.id == post.id
    }
    guard let actualIndex = postIndex else {return}
    
    sampleData[actualIndex].isFavorite.toggle()
}

mutating func deletePost(_ post: Post) {
    let postIndex = sampleData.firstIndex { p in
        p.id == post.id
    }
    guard let actualIndex = postIndex else {return}
    
    sampleData.remove(at: actualIndex)
}

    mutating func add(post: Post) {
            sampleData.append(post)
        }
}

