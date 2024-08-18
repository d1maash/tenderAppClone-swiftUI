//
//  CardStackView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 17.08.2024.
//

import SwiftUI

struct CardStackView: View {
    @StateObject var viewModel = CardsViewModel(service: CardService())
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                ZStack {
                    ForEach(viewModel.cardModels) { card in
                        CardView(viewModel: viewModel, model: card)
                    }
                }
                
                if !viewModel.cardModels.isEmpty {
                    SwipeActionButtonView(viewModel: viewModel)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading, content: {
                    Text("Tanyspadykpa?").font(.title).fontWeight(.bold)
                })
            }
        }
    }
}


#Preview {
    CardStackView()
}
