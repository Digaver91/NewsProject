//
//  NewsCardTableViewCell.swift
//  NEWSPROject
//
//  Created by Dmytro Gavrylov on 04.09.2022.
//

import UIKit

class NewsCardTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var newsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   func addData(news: News) {
       titleLabel.text = news.title
       descriptionLabel.text = news.newsDescription
       dateLabel.text = "\(news.creationDate)"
       newsImage.image = news.icon
   }
}
