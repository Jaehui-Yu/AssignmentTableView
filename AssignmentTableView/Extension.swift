//
//  Extension.swift
//  AssignmentTableView
//
//  Created by Jaehui Yu on 1/10/24.
//

import UIKit

extension UIImageView {
    func setPosterImageView() {
        self.contentMode = .scaleAspectFill
        self.layer.cornerRadius = 10
    }
}

extension UILabel {
    func setMainLabel() {
        self.font = .boldSystemFont(ofSize: 30)
        self.numberOfLines = 2
    }
    
    func setSubLabel() {
        self.textColor = .gray
    }
    
    func setDateLabel() {
        self.textColor = .gray
        self.textAlignment = .right
    }
}

extension TravelTableViewCell: configureCell {
    func configureCell(data: Magazine) {
        let url = URL(string: data.photo_image)
        posterImageView.kf.setImage(with: url)
        mainLabel.text = data.title
        subLabel.text = data.subtitle
        
        let format = DateFormatter()
        format.dateFormat = "yyMMdd"
        if let date = format.date(from: data.date) {
            format.dateFormat = "yy년 MM월 dd일"
            let result = format.string(from: date)
            dateLabel.text = result
        } else {
            print("error")
        }
    }
}
