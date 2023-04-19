//
//  PostsTableViewCell.swift
//  InstagramClone
//
//  Created by Emine Sinem on 19.04.2023.
//

import UIKit

class PostsTableViewCell: UITableViewCell {

    @IBOutlet weak var otherUserNameLabel: UILabel!
    @IBOutlet weak var userProfileImageView: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp(model: PostModel) {
        userProfileImageView.image = model.profilePic
        otherUserNameLabel.text = model.userName.lowercased()
        commentLabel.text = model.caption
        likeCountLabel.text = String(model.likeCount) + "\n" + "likes"
        postImageView.image = model.image
        
        userProfileImageView.layer.cornerRadius = 30
        userProfileImageView.clipsToBounds = true
        
    }
     
}
