//
//  PodcastListViewModel.swift
//  AudiobooksCodingChallenge
//
//  Created by Chux Ugonabo MacBook on 2023-04-27.
//

import Foundation

struct Podcast {
    let id: String
    let title: String
    let publisherName: String
    let thumbnailUrl: String
    let description: String
    
    init( id: String, title: String, publisherName: String, thumbnailUrl: String, description: String) {
        self.id = id
        self.title = title
        self.publisherName = publisherName
        self.thumbnailUrl = thumbnailUrl
        self.description = description
    }
    
    init(podcastAPIResponse: PodcastAPIParentResponse.PodcastAPIResponse) {
        self.id = podcastAPIResponse.id
        self.title = podcastAPIResponse.title
        self.publisherName = podcastAPIResponse.publisher
        self.thumbnailUrl = podcastAPIResponse.thumbnail
        self.description = podcastAPIResponse.description
    }
}

class PodcastListViewModel {
    let dispatchGroup = DispatchGroup()
    let numberOfSections = 1
    var podcastList = [Podcast]()
    var podcastListMain = [[Podcast]]()
    
    func getPodcastList() {
        
        dispatchGroup.enter()
        PodcastAPIService.getPodcastList { podcastsResponse in
            self.podcastList = podcastsResponse.map {Podcast(podcastAPIResponse: $0)}
            self.dispatchGroup.leave()
        }
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return podcastList.count
    }

    func podcastForIndexPath(_ indexPath: IndexPath) -> Podcast {
        return podcastList[indexPath.row]
    }
}
