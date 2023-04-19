//
//  ProfilePostTableViewCell.swift
//  InstagramClone
//
//  Created by Emine Sinem on 19.04.2023.
//

import UIKit

class ProfilePostTableViewCell: UITableViewCell {
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
        postImageView.image = model.image
        
    }
}
