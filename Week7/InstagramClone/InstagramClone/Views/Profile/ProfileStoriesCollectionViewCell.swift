//
//  ProfileStoriesCollectionViewCell.swift
//  InstagramClone
//
//  Created by Emine Sinem on 19.04.2023.
//

import UIKit

class ProfileStoriesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var storyImageView: UIImageView!
    @IBOutlet weak var storyLabel: UILabel!
  
    func setUp(model: StoryModel) {
        storyImageView.image = model.storyImage
        storyLabel.text = model.storyText
        
        storyImageView.layer.cornerRadius = 30
        storyImageView.clipsToBounds = true
        
        storyImageView.layer.borderWidth = 2
        storyImageView.layer.borderColor = UIColor.lightGray.cgColor
        
        storyLabel.textAlignment = .center
        
    }
   }
