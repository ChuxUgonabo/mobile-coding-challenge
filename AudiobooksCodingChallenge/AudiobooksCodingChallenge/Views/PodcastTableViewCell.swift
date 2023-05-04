//
//  PodcastViewCell.swift
//  AudiobooksCodingChallenge
//
//  Created by Chux Ugonabo MacBook on 2023-04-26.
//

import UIKit

class PodcastTableViewCell: UITableViewCell {

    
    @IBOutlet weak var podcastCellThumbnailImageView: UIImageView!
    @IBOutlet weak var podcastCellTitleLabel: UILabel!
    @IBOutlet weak var podcastCellPublisherNameLabel: UILabel!
    @IBOutlet weak var podcastCellFavouriteStateLabel: UILabel!
    
    static let cellIdentifer = "PodcastTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    static func nib() ->  UINib {
        return UINib(nibName: cellIdentifer, bundle: nil)
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(podcast: Podcast) {
        podcastCellTitleLabel.text = podcast.title
        podcastCellPublisherNameLabel.text = podcast.publisherName
        PodcastAPIService.retriveAndSetImage(imageUrlString: podcast.thumbnailUrl, imageView: podcastCellThumbnailImageView)
    }
    
}
