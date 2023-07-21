//
//  PostData.swift
//  hacker-news-swiftui
//
//  Created by bagus on 20/07/23.
//

import Foundation

struct Results: Codable {
    let hits : [Post]
}

struct Post : Codable, Identifiable {
    var id: String {
        return objectID
    }
    let points : Int
    let title : String
    let url : String?
    let objectID : String
}
