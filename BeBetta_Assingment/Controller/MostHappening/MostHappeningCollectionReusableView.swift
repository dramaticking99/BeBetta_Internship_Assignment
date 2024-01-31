//
//  MostHappeningCollectionReusableView.swift
//  BeBetta_Assingment
//
//  Created by Chetan Sanwariya on 25/01/24.
//

import UIKit

class MostHappeningCollectionReusableView: UICollectionReusableView {
    static let identifier = "mostHappningHeader"
    
    private let imageView : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Rectange 12"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
}
