//
//  Post.swift
//  SolarGram
//
//  Created by Jasmine Lee on 3/26/23.
//

import SwiftUI

struct Post: Identifiable {
    let id: UUID = UUID()
    let photo: Image
    let description: String
    var isFavorite: Bool
    let author: User
}
