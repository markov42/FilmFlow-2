//
//  DetailViewController.swift
//  Flixster1
//
//  Created by Jing Liu on 3/13/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var movie: Movie!

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var movieOutlineLabel: UITextView!
    
    @IBOutlet weak var AvgVotes: UILabel!
    
    @IBOutlet weak var Votes: UILabel!
    
    @IBOutlet weak var Popularity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        Nuke.loadImage(with: movie.backdrop_path, into: movieImageView)

        // Set labels with the associated track values.
        movieTitleLabel.text = movie.original_title
        movieOutlineLabel.text = movie.overview
        AvgVotes.text = String(format: "%.1f", movie.vote_average)
        Votes.text = String(movie.vote_count)
        Popularity.text = String(format: "%.1f", movie.popularity)

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
