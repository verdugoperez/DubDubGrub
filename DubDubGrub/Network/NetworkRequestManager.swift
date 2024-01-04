//
//  NetworkRequestManager.swift
//  DubDubGrub
//
//  Created by Manuel Alejandro Verdugo Pérez on 03/01/24.
//

import Foundation

class NetworkRequestManager {
    
    enum NetworkError: Error {
        case invalidURL
        case requestFailed(Error)
        case invalidResponse
        case invalidData
    }
    
    // Make a GET request and return the response as Data
    func fetchData(from url: URL) async throws -> Data {
        let (data, _) = try await URLSession.shared.data(from: url)
        return data
    }
    
    // Make a GET request and return the response as a decoded object of type T
    func fetch<T: Decodable>(from url: URL, responseType: T.Type) async throws -> T {
        let data = try await fetchData(from: url)
        let decoder = JSONDecoder()
        
        do {
            let decodedObject = try decoder.decode(responseType, from: data)
            return decodedObject
        } catch {
            throw NetworkError.invalidData
        }
    }
}


