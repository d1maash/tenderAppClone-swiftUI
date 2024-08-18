//
//  CurrentUserProfileView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 18.08.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    var body: some View {
        NavigationStack {
            List {
                // headview
                CurrentUserProfileHeaderView(user: user)
                
                // account info
                
                //legal
                
                // lagout / dleete
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[1])
}
