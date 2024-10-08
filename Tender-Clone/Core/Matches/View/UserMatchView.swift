//
//  UserMatchView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 18.08.2024.
//

import SwiftUI

struct UserMatchView: View {
    @Binding var show: Bool
    @EnvironmentObject var matchManager: MatchManager
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black.opacity(0.7))
                .ignoresSafeArea()
            
            VStack(spacing: 120) {
                VStack {
                    Image(systemName: "heart").foregroundStyle(Color.white).padding()
                    if let matchedUser = matchManager.matchedUser {
                        Text("You and \(matchedUser.fullname) have liked each other...").foregroundStyle(.white)
                    }
                }
                
                HStack {
                    Image(MockData.users[0].profileImageUrls[0])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .background {
                            Circle()
                                .fill(Color(.systemGray6))
                                .frame(width: 150, height: 150)
                                .shadow(radius: 10)
                                .overlay {
                                    Circle()
                                        .stroke(.white, lineWidth: 2)
                                        .shadow(radius: 4)
                                }
                        }
                    if let matchedUser = matchManager.matchedUser {
                        Image(matchedUser.profileImageUrls[0])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .background {
                                Circle()
                                    .fill(Color(.systemGray6))
                                    .frame(width: 150, height: 150)
                                    .shadow(radius: 10)
                                    .overlay {
                                        Circle()
                                            .stroke(.white, lineWidth: 2)
                                            .shadow(radius: 4)
                                    }
                            }
                    }
                }
                
                VStack(spacing: 16) {
                    Button("Send Message") {
                        show.toggle()
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.pink)
                    .clipShape(Capsule())
                    
                    Button("Keep Swiping") {
                        show.toggle()
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.clear)
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                            .stroke(.white, lineWidth: 2)
                            .shadow(radius: 4)
                    }
                }
                
            }
        }
    }
}

#Preview {
    UserMatchView(show: .constant(true))
        .environmentObject(MatchManager())
}
