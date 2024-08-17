//
//  CardModel.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 17.08.2024.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable{
    var id: String { return user.id }
}
