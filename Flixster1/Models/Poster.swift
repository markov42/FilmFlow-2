//
//  Poster.swift
//  Flixster1
//
//  Created by Jing Liu on 3/14/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let backdrop_path: URL
}
