//
//  PodcastItemViewController.swift
//  AudiobooksCodingChallenge
//
//  Created by Chux Ugonabo MacBook on 2023-04-27.
//

import UIKit

class PodcastItemViewController: UIViewController {

    @IBOutlet weak var podcastTitleLabel: UILabel!
    @IBOutlet weak var podcastPublisherNameLabel: UILabel!
    @IBOutlet weak var podcastThumbnailImageView: UIImageView!
    @IBOutlet weak var podcastDescriptionLabel: UILabel!
    
    var selectedPodcast: Podcast?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let selectedPodcast = selectedPodcast {
            
        }
    }


    @IBAction func backButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func favouriteButtonAction(_ sender: UIButton) {
    }
}
