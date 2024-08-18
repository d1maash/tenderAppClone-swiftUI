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
                Section("Account Info") {
                    HStack {
                        Text("Name")
                        
                        Spacer()
                        
                        Text(user.fullname)
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        
                        Text("test@gmail.com")
                    }
                }
                //legal
                
                
                Section("Legal") {
                    Text("Terms of Service")
                }
                
                // lagout / dleete
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[1])
}
