//
//  PodcastAPIService.swift
//  AudiobooksCodingChallenge
//
//  Created by Chux Ugonabo MacBook on 2023-04-27.
//

import Foundation
import UIKit

// Listen Notes Podcast API
struct PodcastAPIParentResponse: Codable {
    struct PodcastAPIResponse: Codable {
        let id: String
        let title: String
        let publisher: String
        let thumbnail: String
        let description: String
    }
    let podcasts: [PodcastAPIResponse]
}
class PodcastAPIService {
    
    static func getPodcastList(completion: @escaping ([PodcastAPIParentResponse.PodcastAPIResponse]) -> ()) {
        let url = URL(string: "https://listen-api-test.listennotes.com/api/v2/best_podcasts")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let podcasts = try JSONDecoder().decode(PodcastAPIParentResponse.self, from: data).podcasts
                completion(podcasts)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    static func retriveAndSetImage(imageUrlString: String, imageView: UIImageView) {
        let imageUrl = URL(string: imageUrlString)!
        let task = URLSession.shared.dataTask(with: imageUrl) { (data, response, error) in
            if let imageData = data {
                DispatchQueue.main.async {
                    // Update your UI with the downloaded image data
                    imageView.image = UIImage(data: imageData)
                }
            }
        }
        task.resume()
    }
}
