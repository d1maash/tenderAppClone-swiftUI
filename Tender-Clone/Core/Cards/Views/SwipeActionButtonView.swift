//
//  SwipeActionButtonView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 18.08.2024.
//

import SwiftUI

struct SwipeActionButtonView: View {
    var body: some View {
        HStack(spacing: 32) {
            Button{
                
            } label: {
                Image(systemName: "xmark")
                    .fontWeight(.heavy)
                    .foregroundStyle(.red)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 40, height: 40)
                            .shadow(radius: 6)
                    }
            }
            .frame(width: 48, height: 48)
            Button{
                
            } label: {
                Image(systemName: "heart.fill")
                    .fontWeight(.heavy)
                    .foregroundStyle(.green)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 40, height: 40)
                            .shadow(radius: 6)
                    }
            }   .frame(width: 48, height: 48)
        }
    }
}

#Preview {
    SwipeActionButtonView()
}
