//
//  ListCell.swift
//  BookAppTeamWork
//
//  Created by macuser on 08.07.21.
//


import UIKit
import  Kingfisher

class ListCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var smallImg: UIImageView!
    
    
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
      
        smallImg.layer.cornerRadius = 30
        smallImg.layer.borderWidth = 2
        smallImg.layer.borderColor = UIColor.white.cgColor
        img.layer.cornerRadius = 10

        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(with item: News) {
        let url = URL(string: item.imageUrl ?? "")
        img.kf.setImage(with: url)
        smallImg.kf.setImage(with: url)
        title.text = item.title
        
    }
}
