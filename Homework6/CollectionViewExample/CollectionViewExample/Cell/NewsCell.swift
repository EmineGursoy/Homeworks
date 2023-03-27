//
//  NewsCell.swift
//  CollectionViewExample
//
//  Created by Emine Sinem on 26.03.2023.
//

import UIKit

class NewsCell: UICollectionViewCell {
    
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var newsDetailLabel: UILabel!
    

    func setUp(model: NewsModel) {
        newsImageView.image = model.newsImage
        newsTitleLabel.text = model.title
        newsDetailLabel.text = model.detail
    }
}
