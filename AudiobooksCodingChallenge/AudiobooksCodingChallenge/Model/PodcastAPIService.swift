//
//  PodcastAPIService.swift
//  AudiobooksCodingChallenge
//
//  Created by Chux Ugonabo MacBook on 2023-04-27.
//

import Foundation
import UIKit

// Listen Notes Podcast API
struct PodcastAPIResponse: Codable {
    let id: UUID
    let title: String
    let publisher: String
    let thumbnail: String
    let description: String
}


