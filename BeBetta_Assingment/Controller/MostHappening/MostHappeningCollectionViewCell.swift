//
//  MostHappeningCollectionViewCell.swift
//  BeBetta_Assingment
//
//  Created by Chetan Sanwariya on 25/01/24.
//

import UIKit

class MostHappeningCollectionViewCell: UICollectionViewCell , UICollectionViewDelegate, UICollectionViewDataSource {
    
    static let identifier = "mostHappeningCollectionViewCell"
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: 55, height: 82)
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: layout
        )
        
        collectionView.register(UINib(nibName: "MostHappeningCell", bundle: nil),
                                forCellWithReuseIdentifier: "mostHappeningCell")
        collectionView.backgroundColor = .systemBackground
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemBackground
        contentView.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
    
    // MARK: - Collection View DataSource Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { 10 }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mostHappeningCell", for: indexPath) as! MostHappeningCell
        return cell
    }
    
    
}
