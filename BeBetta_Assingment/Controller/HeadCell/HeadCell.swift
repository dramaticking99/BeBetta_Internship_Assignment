//
//  HeadCell.swift
//  BeBetta_Assingment
//
//  Created by Chetan Sanwariya on 26/01/24.
//

import UIKit

class HeadCell: UICollectionViewCell {
    
    
    @IBOutlet weak var purseImageView: UIImageView!
    
    @IBOutlet weak var bellImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        purseImageView.layer.cornerRadius = 22
        bellImageView.layer.cornerRadius = 22
        purseImageView.clipsToBounds = true
        bellImageView.clipsToBounds = true
    }

}
