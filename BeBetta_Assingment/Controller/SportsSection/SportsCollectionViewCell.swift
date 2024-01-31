//
//  SportsCollectionViewCell.swift
//  BeBetta_Assingment
//
//  Created by Chetan Sanwariya on 26/01/24.
//

import UIKit

class SportsCollectionViewCell: UICollectionViewCell, UICollectionViewDataSource,UICollectionViewDelegate {
    static let identifier = "sportsCollectionViewCell"
    
    private let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize =  CGSize(width: 105, height: 34)
        let collectionView = UICollectionView (
            frame:.zero,
            collectionViewLayout:layout
        )
        collectionView.backgroundColor = .systemBackground
        collectionView.register(UINib(nibName: "SportsCell", bundle: nil),
                                forCellWithReuseIdentifier: "sportsCell")
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
    
    //MARK: - CollectionViewDataSource Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sportsCell", for: indexPath) as! SportsCell
        return cell
    }
    
}
