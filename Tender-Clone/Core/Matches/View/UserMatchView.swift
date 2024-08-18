//
//  UserMatchView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 18.08.2024.
//

import SwiftUI

struct UserMatchView: View {
    @Binding var show: Bool
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black.opacity(0.7))
                .ignoresSafeArea()
            
            VStack(spacing: 120) {
                VStack {
                    Image(systemName: "heart").foregroundStyle(Color.white).padding()
                    Text("You and Kelly have liked each other...").foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    UserMatchView(show: .constant(true))
}
