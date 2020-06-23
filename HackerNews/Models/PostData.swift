//
//  File.swift
//  HackerNews
//
//  Created by Olena Rostovtseva on 23.06.2020.
//  Copyright © 2020 orost. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
