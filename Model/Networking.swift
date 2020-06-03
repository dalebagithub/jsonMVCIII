//
//  Networking.swift
//  jsonMVCIII
//
//  Created by Duale on 6/3/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import Foundation

class Networking {
    func response ( url: String   , completion:  @escaping ([Photo]) -> () ) {
        guard let url =  URL(string: url) else {return}
        URLSession.shared.dataTask(with: url, completionHandler: { (data , response , error ) in
            self.urlResponseCompletionHandler(data: data, response: response, error: error, completion: completion)
            }).resume()
    }
    func urlResponseCompletionHandler (data: Data? , response: URLResponse? , error: Error? , completion: ([Photo]) -> () ) {
        guard let data = data else {return}
        do {
           let jsondecoder = JSONDecoder()
            let photos = try jsondecoder.decode(Array<Photo>.self, from: data)
            completion(photos)
        } catch {
            print("Error \(error)")
        }
    }
}
