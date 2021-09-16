//
//  PostData.swift
//  H4XOR News
//
//  Created by Minjae Lee on 2021/09/16.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String { // To Order
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
