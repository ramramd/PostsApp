//
//  PostsModel.swift
//  PostsApp
//
//  Created by Naveen Ramachandrappa on 7/31/23.
//

import Foundation

struct ModelElement: Codable, Hashable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}
