//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Prasi Aravind on 11/22/22.
//

import Foundation

struct Constants{
    static let API_KEY = "080ef1a9009fff5f2d8436c17be46fbd"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error{
    case failedToGetData
}

class APICaller{
    static let shared = APICaller()
    
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url  = URL(string:"\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            }
            catch{
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
