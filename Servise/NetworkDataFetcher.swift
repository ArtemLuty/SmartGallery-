//
//  NetworkDataFetcher.swift
//  Smart Gallery 2
//
//  Created by Корістувач on 04.04.2020.
//  Copyright © 2020 kolesnikov. All rights reserved.
//

import Foundation

class NetworkDataFetcher {
    var networkService = NetworkService()
    
    func fetchImages(searchTerm: String, completion: @escaping (SearchResults?) ->
        ()){
        networkService.request(searchTerm: searchTerm) { (data, error) in
            if let error = error {
                print("Error receivid requesting data: \(error.localizedDescription)")
                completion(nil)
            }
            
            let decode = self.decodeJSON(type: SearchResults.self, from: data)
            completion(decode)
        }
    }
    
    func decodeJSON<T: Decodable>(type: T.Type, from: Data?) -> T? {
        let decoder = JSONDecoder()
        guard let data = from else { return nil }
        
        do {
            let objects = try decoder.decode(type.self, from: data)
            return objects
        } catch let jsonError {
            print("Failed to decode JSON" , jsonError)
            return nil
        }
        
    }
}
