//
//  HomeCollectionViewController.swift
//  BeBetta_Assingment
//
//  Created by Chetan Sanwariya on 25/01/24.
//

import UIKit

class HomeCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.showsVerticalScrollIndicator = false
        
        //HeadSection
        self.collectionView.register(UINib(nibName: "HeadCell", bundle: nil), forCellWithReuseIdentifier: "headCell" )
        
        //SportsSection
        self.collectionView.register(SportsCollectionViewCell.self,
                                     forCellWithReuseIdentifier: "sportsCollectionViewCell")
        
        //LiveMatchSection
        self.collectionView.register(LiveMatchesCollectionViewCell.self,
                                     forCellWithReuseIdentifier: "liveMatchesCollectionViewCell")
        
        self.collectionView.register(UINib(nibName: "LiveMatchesHeader", bundle: nil),
                                     forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                     withReuseIdentifier: "liveMatchesHeader")
        
        //MostHappening
        self.collectionView.register(MostHappeningCollectionViewCell.self,
                                     forCellWithReuseIdentifier: "mostHappeningCollectionViewCell")
        self.collectionView.register(UINib(nibName:"MostHappeningHeader" , bundle: nil),
                                     forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                     withReuseIdentifier: "mostHappeningHeader")
        
        //bettaCoins
        self.collectionView.register(UINib(nibName: "BettaCoinsCollectionViewCell", bundle: nil),
                                     forCellWithReuseIdentifier:"bettaCoins" )
        self.collectionView.register(UINib(nibName:"EmptyHeader" , bundle: nil),
                                     forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                     withReuseIdentifier: "emptyHeader")
        
        //rapidFireSection
        self.collectionView.register(UINib(nibName: "RapidFireCollectionViewCell", bundle: nil),
                                     forCellWithReuseIdentifier:"rapidFireCell" )
        self.collectionView.register(UINib(nibName: "RapidFireHeader", bundle: nil),
                                     forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                     withReuseIdentifier: "rapidFireHeader")
        
        //liveMatchesSection
        self.collectionView.register(MatchPreviewCollectionViewCellMain.self,
                                     forCellWithReuseIdentifier: "matchPreviewCollectionViewCell")
        self.collectionView.register(UINib(nibName: "MatchPreviewHeader", bundle: nil),
                                     forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                     withReuseIdentifier: "matchPreviewHeader")
        
        
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 7
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            let headCell = collectionView.dequeueReusableCell(withReuseIdentifier: "headCell", for: indexPath) as! HeadCell
            return headCell
        case 1:
            let sportsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "sportsCollectionViewCell",
                                                                for: indexPath) as! SportsCollectionViewCell
            return sportsCell
        case 2:
            let liveMatchesCell = collectionView.dequeueReusableCell(withReuseIdentifier: "liveMatchesCollectionViewCell",
                                                                     for: indexPath) as! LiveMatchesCollectionViewCell
            return liveMatchesCell
        case 3:
            let mostHappeningCell = collectionView.dequeueReusableCell(withReuseIdentifier: "mostHappeningCollectionViewCell",
                                                                       for: indexPath) as! MostHappeningCollectionViewCell
            return mostHappeningCell
        case 4:
            let bettaCoins = collectionView.dequeueReusableCell(withReuseIdentifier: "bettaCoins",
                                                                for: indexPath) as! BettaCoinsCollectionViewCell
            return bettaCoins
        case 5:
            let rapidFireCell = collectionView.dequeueReusableCell(withReuseIdentifier: "rapidFireCell", for: indexPath) as! RapidFireCollectionViewCell
            return rapidFireCell
        default:
            let matchPreviewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "matchPreviewCollectionViewCell",
                                                                      for: indexPath) as! MatchPreviewCollectionViewCellMain
            return matchPreviewCell
        }
    
    }

    //MARK: - UICollectionViewDelegateFlowlayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        switch indexPath.section {
        case 0:
            return CGSize(width: 390, height: 70)
        case 1:
            return CGSize(width: 390, height: 55)
        case 2:
            return CGSize(width: 390, height: 160)
        case 3:
            return CGSize(width: 393, height: 90)
        case 4:
            return CGSize(width: 393, height: 95)
        case 5:
            return CGSize(width: 393, height: 212)
        default:
            return CGSize(width: 393, height: 150)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if(section == 0 || section == 1 || section == 4){
            return CGSize(width: 160, height: 2)
        } else {
            return CGSize(width: 160, height: 50)
        }
    }
    
    //MARK:  Header and Footer Adding methods
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if(indexPath.section == 2){
            let liveMatchSectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                                         withReuseIdentifier: "liveMatchesHeader",
                                                                                         for: indexPath)
            return liveMatchSectionHeader
        } else if(indexPath.section == 3){
            let mostHappeningSectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                                             withReuseIdentifier:"mostHappeningHeader",
                                                                                             for: indexPath)
            return mostHappeningSectionHeader
        } else if (indexPath.section == 5) {
            let RapidFireHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                                  withReuseIdentifier: "rapidFireHeader",
                                                                                  for: indexPath)
            return RapidFireHeader
        } else if (indexPath.section == 6){
            let matchPreviewHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                                     withReuseIdentifier: "matchPreviewHeader",
                                                                                     for: indexPath)
            return matchPreviewHeader
        } else {
            let emptyHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                              withReuseIdentifier: "emptyHeader",
                                                                              for: indexPath)
            return emptyHeader
        }
        
    }
    
    //MARK: - BettaCoins Button Pressed
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "onlySeige", sender: sender)
    }
}
