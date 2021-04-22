//
//  YoutubeManCollectionViewCell.swift
//  youtube guess it
//
//  Created by Gavin Craft on 4/22/21.
//

import UIKit

class YoutubeManCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var pictureView: UIImageView!

    //MARK: - instance variables
    var youtuber:Youtuber?{
        didSet{
            updateViews()
        }
    }
    
    //MARK: - helper methods
    private func updateViews(){
        guard let youtuber = youtuber else {return}
        pictureView.image = youtuber.photo
        pictureView.contentMode = .scaleAspectFill
    }
    
    //MARK: - ibactions
    
}
