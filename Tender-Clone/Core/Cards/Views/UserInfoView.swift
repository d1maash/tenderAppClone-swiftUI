//
//  UserInfoView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 17.08.2024.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Ailin")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("21")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                Button {
                    print("DEBUG: Show profile here")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            Text("Actress | Model")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    UserInfoView()
}
