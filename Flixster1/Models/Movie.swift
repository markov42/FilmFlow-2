//
//  File.swift
//  Flixster Pt. 1
//
//  Created by Jing Liu on 3/6/23.
//

import Foundation

struct Movie: Decodable {
    let original_title: String
    let overview: String
    let backdrop_path: URL
    let vote_average: Float
    let vote_count: Int
    let popularity: Float
}

struct MoviesResponse: Decodable {
    let results: [Movie]
}




//extension Movie {
//    static var mockMovies: [Movie] = [
//        Movie(original_title: "Transfusion", overview: "Ryan Logan, a former Special Forces operative, is battling to cope with life after the loss of his wife.  He is thrusted into the criminal underworld to keep his only son from being taken from him.", backdrop_path: URL(string:"https://image.tmdb.org/t/p/original/bxh5xCCW9Ynfg6EZJWUkc1zqTnr.jpg")!, vote_average: 6.6, vote_count: 125, popularity: 749.802),
//        Movie(original_title: "Detective Knight", overview: "Detective James Knight 's last-minute assignment to the Independence Day shift turns into a race to stop an unbalanced ambulance EMT from imperiling the city's festivities. The misguided vigilante, playing cop with a stolen gun and uniform, has a bank vault full of reasons to put on his own fireworks show... one that will strike dangerously close to Knight's home.", backdrop_path: URL(string:"https://image.tmdb.org/t/p/original/jrPKVQGjc3YZXm07OYMriIB47HM.jpg")!, vote_average: 6.1, vote_count: 73, popularity: 843.279),
//        Movie(original_title: "Little Dixie", overview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!, vote_average: 6.3, vote_count: 44, popularity: 1698.096),
//        Movie(original_title: "Huesera", overview: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/7NhG3NClQ1xrc3kEwTiwFht5Y3L.jpg")!, vote_average: 6.8, vote_count: 57, popularity: 1511.332),
//        Movie(original_title: "M3GAN", overview: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!, vote_average: 7.5, vote_count: 1864, popularity: 1420.255),
//        Movie(original_title: "Creed III", overview: "After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damien Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damien - a fighter who has nothing to lose.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/cvsXj3I9Q2iyyIo95AecSd1tad7.jpg")!, vote_average: 7.2, vote_count: 104, popularity: 1194.546),
//        Movie(original_title: "The Whale", overview: "A reclusive English teacher suffering from severe obesity attempts to reconnect with his estranged teenage daughter for one last chance at redemption.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/jQ0gylJMxWSL490sy0RrPj1Lj7e.jpg")!, vote_average: 8, vote_count: 734, popularity: 784.344)
//
//    ]

