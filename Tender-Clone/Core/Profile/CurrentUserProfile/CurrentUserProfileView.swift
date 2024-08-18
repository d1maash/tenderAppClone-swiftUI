//
//  CurrentUserProfileView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 18.08.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var showEditProfile = false
    let user: User
    var body: some View {
        NavigationStack {
            List {
                // headview
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()}
                
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
                
               
                Section {
                    Button("Logout") {
                        print("LOGOUT HERE")
                    }.foregroundStyle(.red)
                  
                }
                Section {
                    Button("Delete Account") {
                        print("Delete Account Here")
                    }.foregroundStyle(.red)
                  
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showEditProfile) {
                Text("Edit Profile")
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[1])
}
