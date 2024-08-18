//
//  CardView.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 17.08.2024.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var matchManager: MatchManager
    @ObservedObject var viewModel: CardsViewModel
    
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var currentImageIndex = 0
    @State private var showProfileModel = false
    
    
    let model: CardModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(user.profileImageUrls[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstans.cardWidth, height: SizeConstans.cardHeight)
                    .overlay {
                        imageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: imageCount)
                    }
                
                CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: imageCount)
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            UserInfoView(showProfileModel: $showProfileModel, user: user)
        }
        .fullScreenCover(isPresented: $showProfileModel) {
            UserProfileView(user: user)
        }
        .onReceive(viewModel.$buttonSwipeAction, perform: { action in
            onReceiveSwipeAction(action)
        })
        .frame(width: SizeConstans.cardWidth, height: SizeConstans.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
             
        )
    }
}


private extension CardView {
    var user: User {
        return model.user
    }
    
    var imageCount: Int {
        return user.profileImageUrls.count
    }
    
}

private extension CardView {
    func returnToCenter() {
        xOffset = 0
        degrees = 0
    }
    func swipeRight() {
        
        withAnimation {
            xOffset = 500
            degrees = 12
        } completion: {
            viewModel.removeCard(model)
            matchManager.checkForMatch(withUser: user)
        }
    }
    
    func swipeLeft() {
        withAnimation {
            xOffset = -500
            degrees = -12
            
        } completion: {
            viewModel.removeCard(model)
        }
    }
    
    func onReceiveSwipeAction(_ action: SwipeAction?) {
        guard let action else { return }
        
        let topCard = viewModel.cardModels.last
        
        if topCard == model {
            switch action {
            case .reject:
                swipeLeft()
            case .like:
                swipeRight()
            }
        }
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        
        if abs(width) < abs(SizeConstans.screenCutoff) {
            returnToCenter()
            return
        }
        
        if width >= SizeConstans.screenCutoff {
            swipeRight()
        } else {
            swipeLeft()
        }
    }
}


#Preview {
    CardView(
        viewModel: CardsViewModel(
            service: CardService()
        ),
        model: CardModel(
            user: MockData.users[1]
        )
    )
}
