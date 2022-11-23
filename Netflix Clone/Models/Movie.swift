//
//  Movie.swift
//  Netflix Clone
//
//  Created by Prasi Aravind on 11/23/22.
//

import Foundation

struct TrendingMoviesResponse: Codable {//Codable makes it compatible with encoder and decoder protocol
    let results: [Movie]
    
    
}

struct Movie: Codable{//id, media type, original language, original title
    let id: Int
    let media_type: String? // Question mark makes it optional so it doesn't crash if there isn't one
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double//gets all necessary data points and stuff
}
/*
 {
adult = 0;
"backdrop_path" = "/bQXAqRx2Fgc46uCVWgoPz5L5Dtr.jpg";
"genre_ids" =             (
 28,
 14,
 878
);
id = 436270;
"media_type" = movie;
"original_language" = en;
"original_title" = "Black Adam";
overview = "Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods\U2014and imprisoned just as quickly\U2014Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.";
popularity = "22201.949";
"poster_path" = "/3zXceNTtyj5FLjwQXuPvLYK5YYL.jpg";
"release_date" = "2022-10-19";
title = "Black Adam";
video = 0;
"vote_average" = "7.044";
"vote_count" = 1511;
},
 */
