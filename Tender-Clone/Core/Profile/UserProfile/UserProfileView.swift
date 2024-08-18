//
//  UserProfileView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 18.08.2024.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentImageIndex = 0
    let user: User
    var body: some View {
        VStack {
            HStack {
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                Text("\(user.age)")
                    .font(.title2)
                
                Spacer()
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundStyle(.pink)
                })
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        Image(user.profileImageUrls[currentImageIndex])
                            .resizable()
                            .scaledToFill()
                            .frame(width: SizeConstans.cardWidth, height: SizeConstans.cardHeight)
                            .overlay {
                                imageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: user.profileImageUrls.count)
                            }
                        
                        CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount:  user.profileImageUrls.count)
                    }
                    
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("About me")
                            .fontWeight(.semibold)
                            .font(.title)
                        
                        
                        Text("Some test bio")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Essa").font(.title).fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "person")
                        
                        Text("Woman")
                        Spacer()
                    }.font(.subheadline)
                    HStack {
                        Image(systemName: "arrow.down.forward.and.arrow.up.backward.circle")
                        
                        Text("Straight")
                        Spacer()
                    }.font(.subheadline)
                    HStack {
                        Image(systemName: "book")
                        
                        Text("Actress")
                        Spacer()
                    }.font(.subheadline)
                }.padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.users[0])
}
