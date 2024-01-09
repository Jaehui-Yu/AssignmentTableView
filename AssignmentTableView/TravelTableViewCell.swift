//
//  TravelTableViewCell.swift
//  AssignmentTableView
//
//  Created by Jaehui Yu on 1/8/24.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super .awakeFromNib()
        
        posterImageView.contentMode = .scaleAspectFill
        posterImageView.layer.cornerRadius = 10
        
        mainLabel.font = .boldSystemFont(ofSize: 30)
        mainLabel.numberOfLines = 2
        
        subLabel.textColor = .gray
        
        dateLabel.textColor = .gray
        dateLabel.textAlignment = .right
        
    }
    
    func configureCell(magazine: Magazine) {
        let url = URL(string: magazine.photo_image)
        posterImageView.kf.setImage(with: url)
        mainLabel.text = magazine.title
        subLabel.text = magazine.subtitle
        
        let format = DateFormatter()
        format.dateFormat = "yyMMdd"
        if let date = format.date(from: magazine.date) {
            format.dateFormat = "yy년 MM월 dd일"
            let result = format.string(from: date)
            dateLabel.text = result
        } else {
            print("error")
        }
        
    }
}
