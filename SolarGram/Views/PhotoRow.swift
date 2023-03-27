//
//  PhotoRow.swift
//  SolarGram
//
//  Created by Jasmine Lee on 3/26/23.
//

import SwiftUI

struct PhotoRow: View {
    @EnvironmentObject var viewModel: ViewModel
    var post: Post
    
    private let authorImageHeight: CGFloat = 30
    
    var body: some View {
        VStack(alignment: .leading) {
            authorView
            SquareImage(Image("photo1"))
            descriptionView
            actionView
            #if os(macOS)
            Divider()
                .padding(.vertical)
            #endif
        }
    }
    
    var authorView: some View {
        HStack {
            SquareImage(Image(post.author.photoID))
                .frame(height: authorImageHeight)
                .clipShape(Circle())
            Text(post.author.name)
                .font(.headline)
        }
        .padding(.leading, 8)
    }
    
    var actionView: some View {
        HStack {
            Button {
                viewModel.setFavorite(post)
            } label: {
                if post.isFavorite {
                    Image(systemName: "heart.fill")
                } else {
                    Image(systemName: "heart")
                }
            }
        }
        .padding(.leading, 8)
    }
    
    var descriptionView: some View {
        Text(post.description)
            .font(.caption)
            .padding(.leading, 8)
            .padding(.bottom, 8)

    }
}

struct PhotoRow_Previews: PreviewProvider {
    static var previews: some View {
        let test = Post(photo: Image("photo1"), description: "hello", isFavorite: false, author: User(name: "Ash", photoID: "ash"))
        PhotoRow(post: test)
            .environmentObject(ViewModel())
            }
    }

