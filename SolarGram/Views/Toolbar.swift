//
//  Toolbar.swift
//  SolarGram
//
//  Created by Jasmine Lee on 3/26/23.
//

import SwiftUI

struct Toolbar: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        HStack {
            Button(action: {
                // action for camera button
            }) {
                Image(systemName: "camera")
            }
            Button(action: {
                // action for plus button
            }) {
                Image(systemName: "plus")
            }
            Spacer()
        }
        .padding()
    }
}

struct Toolbar_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar()
            .environmentObject(ViewModel())

    }
}
