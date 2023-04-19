//
//  ProfileViewController.swift
//  InstagramClone
//
//  Created by Emine Sinem on 18.04.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var postCountLabel: UILabel!
    @IBOutlet weak var folllowerCountLabel: UILabel!
    @IBOutlet weak var followingCountLabel: UILabel!
    @IBOutlet weak var fullUserNameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var storiesCollectionView: UICollectionView!
    @IBOutlet weak var postsTableView: UITableView!
    
    let stories = StoryModel.stories2
    let posts = PostModel.posts
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureCollectionView()
        configureTableView()
        
        let currentUser = UserModel(userName: "Ezgi", profileImage:  UIImage(named: "profile_pic_6")!, postCount: 2, followerCount: 100, followingCount: 70, bio: "Teacher")
        
        userNameLabel.text = currentUser.userName.lowercased()
        profileImageView.image = currentUser.profileImage
        //postCountLabel.text
        folllowerCountLabel.text = String(currentUser.followerCount) + "\n" + "Followers"
        followingCountLabel.text = String(currentUser.followingCount) + "\n" + "Followings"
        fullUserNameLabel.text = currentUser.userName
        //postCountLabel.text = String(currentUser.postCount) + "\n" + "Posts"
        postCountLabel.text = String(posts.count) + "\n" + "Posts"
        bioLabel.text = currentUser.bio
        
        profileImageView.layer.cornerRadius = 50
        profileImageView.clipsToBounds = true
    }
    
    private func configureCollectionView() {
        storiesCollectionView.dataSource = self
        storiesCollectionView.delegate = self
    }
    
    private func configureTableView() {
        postsTableView.dataSource = self
        postsTableView.delegate = self
    }

}
extension ProfileViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let storyModel = stories[indexPath.row]
        
        let cell = storiesCollectionView.dequeueReusableCell(withReuseIdentifier: "storyCell", for: indexPath) as! ProfileStoriesCollectionViewCell
        cell.setUp(model: storyModel)
        return cell
        
    }
    
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let postModel = posts[indexPath.row]
        
        let cell = postsTableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! ProfilePostTableViewCell
        cell.setUp(model: postModel)
        return cell
    }
    
}
