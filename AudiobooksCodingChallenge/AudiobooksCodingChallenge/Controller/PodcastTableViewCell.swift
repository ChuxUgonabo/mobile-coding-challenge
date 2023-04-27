//
//  PodcastViewCell.swift
//  AudiobooksCodingChallenge
//
//  Created by Chux Ugonabo MacBook on 2023-04-26.
//

import UIKit

class PodcastTableViewCell: UITableViewCell {

    
    @IBOutlet weak var podcastThumbnailImageView: UIImageView!
    @IBOutlet weak var podcastTitleLabel: UILabel!
    @IBOutlet weak var podcastPublisherNameLabel: UILabel!
    @IBOutlet weak var podcastFavouriteStateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
