//
//  MatchPreviewCollectionViewCellMain.swift
//  BeBetta_Assingment
//
//  Created by Chetan Sanwariya on 25/01/24.
//

import UIKit

class MatchPreviewCollectionViewCellMain: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    static let identifier = "matchPreviewCollectionViewCell"
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width:250 , height:150)
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: layout
        )
        
        collectionView.register(UINib(nibName: "MatchPreviewCollectionViewCell",
                                      bundle: nil),
                                forCellWithReuseIdentifier: "matchPreviewCell")
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
    
    //MARK: - CollectionViewDataSource methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "matchPreviewCell",
                                                      for: indexPath)
        return cell
    }
    
    
    
    
    
}
