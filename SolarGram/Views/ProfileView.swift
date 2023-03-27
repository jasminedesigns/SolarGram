//
//  ProfileView.swift
//  SolarGram
//
//  Created by Jasmine Lee on 3/4/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: ViewModel
    var posts: Post
    
    private let headerHeight: CGFloat = 120
    
    var body: some View {
        VStack {
            headerView
            GridPhotoView().environmentObject(viewModel)
        }
    }
    
    var headerView: some View {
        VStack {
            SquareImage(Image(PublicPosts.currentUser.photoID))
                .clipShape(Circle())
            Text(PublicPosts.currentUser.name)
                .font(.title)
        }
        .frame(height: headerHeight)
        .padding()
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(name: "Ash", photoID: "ash")
        let post = Post(photo: Image(uiImage: UIImage(named: "photo1")!), description: "This is my post", isFavorite: true, author: user)
                let viewModel = ViewModel()
                
                return ProfileView(posts: post)
                    .environmentObject(viewModel)
            }
        }

