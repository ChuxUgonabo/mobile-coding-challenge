//
//  PodcastListViewController.swift
//  AudiobooksCodingChallenge
//
//  Created by Chux Ugonabo MacBook on 2023-04-26.
//

import UIKit

class PodcastListViewController: UIViewController {

    @IBOutlet weak var podcastListTableVIew: UITableView!
    
    var viewModel = PodcastListViewModel()
    
    let moveToPodcastItemVC = "MoveToPodcastItemVC"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        podcastListTableVIew.register(PodcastTableViewCell.nib(), forCellReuseIdentifier: PodcastTableViewCell.cellIdentifer)
        podcastListTableVIew.dataSource = self
        podcastListTableVIew.delegate = self
        
        viewModel.getPodcastList()
    }

}

// MARK: - UITableViewDelegate

extension PodcastListViewController: UITableViewDataSource {
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PodcastTableViewCell.cellIdentifer, for: indexPath) as? PodcastTableViewCell else{
            return UITableViewCell()
        }
        
        let podcast = viewModel.podcastForIndexPath(indexPath)
        cell.configure(podcast: podcast)
        
        return cell
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section)
    }

     func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections
    }
}

extension PodcastListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPodcast = viewModel.podcastForIndexPath(indexPath)
        self.performSegue(withIdentifier: moveToPodcastItemVC, sender: (selectedPodcast))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == moveToPodcastItemVC {
            if let (selectedPodcast) = sender as? (Podcast) {
                let podcastItemVC = segue.destination as! PodcastItemViewController
                podcastItemVC.selectedPodcast = selectedPodcast
            }
        }
    }
}
