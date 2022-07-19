//
//  MusicCollectionViewCell.swift
//  HelloDuna4th
//
//  Created by Seungyun Kim on 2022/07/19.
//

import UIKit

class MusicCollectionViewCell: UICollectionViewCell {

    static let identifier = "MusicCollectionViewCell"
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    func setData(imageName: String, title: String, subtitle: String) {
        if let image = UIImage(named: imageName) {
            albumImageView.image = image
            albumImageView.contentMode = .scaleAspectFill
        }
        titleLabel.text = title
        subTitleLabel.text = subtitle
    }
}
