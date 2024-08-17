//
//  MockData.swift
//  Tender-Clone
//
//  Created by Динмуханбет Айжарыков on 17.08.2024.
//

import Foundation


struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Ailin",
            age: 22,
            profileImageUrls: [
                "firstPerson",
                "secondPerson"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Anelya",
            age: 28,
            profileImageUrls: [
                "thirdPerson",
                "forthPerson"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Aigul",
            age: 32,
            profileImageUrls: [
                "fifthPerson",
                "sixthPerson"
            ]
        )
    ]
}
