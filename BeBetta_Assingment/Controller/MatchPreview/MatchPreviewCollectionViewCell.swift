//
//  MatchPreviewCollectionViewCell.swift
//  BeBetta_Assingment
//
//  Created by Chetan Sanwariya on 25/01/24.
//

import UIKit

class MatchPreviewCollectionViewCell: UICollectionViewCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
