//
//  CardStackView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 17.08.2024.
//

import SwiftUI

struct CardStackView: View {
    @State private var showMatchView = false
    @StateObject var viewModel = CardsViewModel(service: CardService())
    
    var body: some View {
        NavigationStack {
            ZStack {
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
                .blur(radius: showMatchView ? 20 : 0)
                if showMatchView {
                    UserMatchView(show: $showMatchView)
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Tanyspadykpa?")
                        .font(
                            .title
                        ).fontWeight(
                            .bold
                        )
                }
            }
        }
    }
}


#Preview {
    CardStackView()
}
