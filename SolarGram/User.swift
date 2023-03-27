//
//  User.swift
//  SolarGram
//
//  Created by Jasmine Lee 3/26/23.
//

import Foundation

struct User: Identifiable {
    let id: UUID = UUID()
    let name: String
    let photoID: String
    
    static let currentUser = User(name: "Ash", photoID: "ash")
}
