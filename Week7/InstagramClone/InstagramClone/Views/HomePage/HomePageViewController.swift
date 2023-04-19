//
//  HomePageViewController.swift
//  InstagramClone
//
//  Created by Emine Sinem on 18.04.2023.
//

import UIKit

class HomePageViewController: UIViewController {
    
    
    @IBOutlet weak var storiesCollectionView: UICollectionView!
    let stories = StoryModel.stories
    let posts = PostModel.posts
    
    @IBOutlet weak var postsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureCollectionView()
        configureTableView()
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
extension HomePageViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let storyModel = stories[indexPath.row]
        
        let cell = storiesCollectionView.dequeueReusableCell(withReuseIdentifier: "storyCell", for: indexPath) as! StoriesCollectionViewCell
        cell.setUp(model: storyModel)
        return cell
        
    }
    
}

extension HomePageViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let postModel = posts[indexPath.row]
        
        let cell = postsTableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostsTableViewCell
        cell.setUp(model: postModel)
        return cell
    }
    
}

