//
//  MovieCell.swift
//  Flixster1
//
//  Created by Jing Liu on 3/13/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieOutlineLabel: UILabel!
    
    
    /// Configures the cell's UI for the given movie.
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.original_title
        movieOutlineLabel.text = movie.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.backdrop_path, into: movieImageView)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
