//
//  Tv.swift
//  Netflix Clone
//
//  Created by Prasi Aravind on 11/23/22.
//

import Foundation

struct TrendingTVResponse: Codable{
    let results: [TV]
}

struct TV: Codable{
    let id: Int
    let media_type: String? // Question mark makes it optional so it doesn't crash if there isn't one
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double//gets all necessary data points and stuff
}
