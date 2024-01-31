//
//  SportsCell.swift
//  BeBetta_Assingment
//
//  Created by Chetan Sanwariya on 26/01/24.
//

import UIKit

class SportsCell: UICollectionViewCell {
    
    var manager = Manager()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = 16
        contentView.layer.masksToBounds = true
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        manager.getSportsSectionItem()
    }

}
