//
//  NewsCell.swift
//  BookAppTeamWork
//
//  Created by Mac User on 7/16/21.
//

import UIKit

class NewsCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var newsImg: UIImageView!
    
    @IBOutlet weak var contentLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
        //newsImg.layer.cornerRadius = 4
        
    }

    func configure(with item: News) {
        let url = URL(string: item.imageUrl ?? "")
        newsImg.kf.setImage(with: url)
        titleLabel.text = item.title
        contentLabel.text = item.content
    }

}
