//
//  GridPhotoView.swift
//  SolarGram
//
//  Created by Jasmine Lee on 3/26/23.
//

import SwiftUI

struct GridPhotoView: View {
    @EnvironmentObject var viewModel: ViewModel
    var publicPosts = PublicPosts()
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: geo.size.width / 4))]) {
                    ForEach(publicPosts.sampleData) { post in
                        SquareImage(Image("photo1"))
                    }
                }
            }
        }
    }
}

struct GridPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        GridPhotoView()
            .environmentObject(ViewModel())
    }
}
