//
//  Tender_CloneApp.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 17.08.2024.
//

import SwiftUI

@main
struct Tender_CloneApp: App {
    @StateObject var matchManager = MatchManager()
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
