//
//  StoryModel.swift
//  InstagramClone
//
//  Created by Emine Sinem on 19.04.2023.
//

import Foundation
import UIKit


struct StoryModel {
    var userName: String
    var profilePic: UIImage
    var storyImage: UIImage
    var storyText: String
    
    
    static let stories: [StoryModel] = [
        StoryModel(userName: "Mehmet", profilePic: UIImage(named: "profile_pic_1")!, storyImage: UIImage(named: "story_3")!, storyText: ""),
        StoryModel(userName: "Eda", profilePic: UIImage(named: "profile_pic_2")!, storyImage: UIImage(named: "story_4")!, storyText: ""),
        StoryModel(userName: "Fatih", profilePic: UIImage(named: "profile_pic_3")!, storyImage: UIImage(named: "story_5")!, storyText: ""),
        StoryModel(userName: "Aylin", profilePic: UIImage(named: "profile_pic_4")!, storyImage: UIImage(named: "story_6")!, storyText: ""),
        StoryModel(userName: "Sude", profilePic: UIImage(named: "profile_pic_5")!, storyImage: UIImage(named: "story_7")!, storyText: ""),
    ]
    
    static let stories2: [StoryModel] = [
        StoryModel(userName: "Ezgi", profilePic: UIImage(named: "profile_pic_6")!, storyImage: UIImage(named: "story_1")!, storyText: "Food"),
        StoryModel(userName: "Ezgi", profilePic: UIImage(named: "profile_pic_6")!, storyImage: UIImage(named: "story_2")!, storyText: "Travel"),
        StoryModel(userName: "Ezgi", profilePic: UIImage(named: "profile_pic_6")!, storyImage: UIImage(named: "story_8")!, storyText: "Nature"),
        StoryModel(userName: "Ezgi", profilePic: UIImage(named: "profile_pic_6")!, storyImage: UIImage(named: "story_9")!, storyText: "Holiday"),
        StoryModel(userName: "Ezgi", profilePic: UIImage(named: "profile_pic_6")!, storyImage: UIImage(named: "story_10")!, storyText: "Flowers")
      
    ]
}

