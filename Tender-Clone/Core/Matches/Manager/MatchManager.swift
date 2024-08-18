//
//  MatchManager.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 18.08.2024.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    
    func checkForMatch(withUser user: User) -> Bool {
        return Bool.random()
    }
}
