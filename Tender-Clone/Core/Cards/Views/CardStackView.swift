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
        ZStack {
            ForEach(viewModel.cardModels) { card in
                CardView(viewModel: viewModel, model: card)
            }
        }
        .onChange(of: viewModel.cardModels) { oldValue, newValue in
            print("DEBUG: OLD VALUE COUNT IS \(oldValue.count)")
            print("DEBUG: NEW VALUE COUNT IS \(newValue.count)")
        }
    }
}

#Preview {
    CardStackView()
}
