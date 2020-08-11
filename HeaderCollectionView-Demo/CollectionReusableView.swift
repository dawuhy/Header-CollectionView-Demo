//
//  CollectionReusableView.swift
//  HeaderCollectionView-Demo
//
//  Created by Huy on 8/10/20.
//  Copyright © 2020 Dang Quoc Huy. All rights reserved.
//

import UIKit

class CollectionReusableView: UICollectionReusableView , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var mySubCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setUpView()
        
    }
    
    private func setUpView() {
        mySubCollectionView.dataSource = self
        mySubCollectionView.delegate = self
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        mySubCollectionView.collectionViewLayout = layout
                mySubCollectionView.showsHorizontalScrollIndicator = false
        
        
        mySubCollectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)

        mySubCollectionView.backgroundColor = .red
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mySubCollectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath)
        cell.backgroundColor = .green
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 100, height: 250)
    }
}
