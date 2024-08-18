//
//  ProfileImageGridView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 18.08.2024.
//

import SwiftUI

struct ProfileImageGridView: View {
    
    let user: User
    
    var body: some View {
        LazyVGrid(columns: columns, content: {
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        })
    }
}


private extension ProfileImageGridView {
    var columns: [GridItem] {
        [
            .init(.flexible()),
            .init(.flexible()),
            .init(.flexible())
        ]
    }
}

#Preview {
    ProfileImageGridView()
}
