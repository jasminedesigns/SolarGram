//
//  Post.swift
//  SolarGram
//
//  Created by Jasmine Lee 3/26/23.
//

import Foundation

struct Post: Identifiable {
    let id: UUID = UUID()
    let photoID: String
    let description: String
    var isFavorite: Bool = false
    let author: User
}
