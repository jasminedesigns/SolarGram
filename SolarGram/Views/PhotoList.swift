//
//  PhotoList.swift
//  SolarGram
//
//  Created by Jasmine Lee on 3/26/23.
//

import SwiftUI

struct PhotoList: View {
    
    @EnvironmentObject var viewModel: ViewModel

    var body: some View {
        imageList
    }
    
    var imageList: some View {
        List(viewModel.publicPosts) { post in
            PhotoRow(post: post)
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PhotoList()
            .environmentObject(ViewModel())
    }
}
