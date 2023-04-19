//
//  StoriesCollectionViewCell.swift
//  InstagramClone
//
//  Created by Emine Sinem on 18.04.2023.
//

import UIKit

class StoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    
    func setUp(model: StoryModel) {
        profilePicture.image = model.profilePic
        userNameLabel.text = model.userName
        profilePicture.layer.cornerRadius = 20
        profilePicture.clipsToBounds = true
        
        profilePicture.layer.borderWidth = 2
        profilePicture.layer.borderColor = UIColor.systemPink.cgColor
        
        userNameLabel.textAlignment = .center
        
    }
   
}
