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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
