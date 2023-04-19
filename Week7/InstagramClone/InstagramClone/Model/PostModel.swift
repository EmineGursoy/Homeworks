//
//  PostModel.swift
//  InstagramClone
//
//  Created by Emine Sinem on 18.04.2023.
//

import Foundation
import UIKit


struct PostModel {
    let userName: String
    let image: UIImage
    var profilePic: UIImage
    var likeCount: Int
    var caption: String
    //var comments: [String]
    //var likes: [UserModel]
    
    
    static let posts: [PostModel] = [
       PostModel(userName: "Eda", image: UIImage(named: "post_1")!, profilePic: UIImage(named: "profile_pic_2")!, likeCount: 100, caption: "Güzel bir aksamüstü"),
       PostModel(userName: "Mehmet", image: UIImage(named: "post_2")!, profilePic: UIImage(named: "profile_pic_1")!, likeCount: 100, caption: "En sevdiklerim"),
       PostModel(userName: "Fatih", image: UIImage(named: "post_3")!, profilePic: UIImage(named: "profile_pic_3")!, likeCount: 100, caption: "xx"),
       PostModel(userName: "Aylin", image: UIImage(named: "post_4")!, profilePic: UIImage(named: "profile_pic_4")!, likeCount: 100, caption: "xx"),
       PostModel(userName: "Sude", image: UIImage(named: "post_5")!, profilePic: UIImage(named: "profile_pic_5")!, likeCount: 100, caption: "xx")
    ]
}
