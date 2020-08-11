//
//  MyCollectionViewCell.swift
//  HeaderCollectionView-Demo
//
//  Created by Huy on 8/10/20.
//  Copyright © 2020 Dang Quoc Huy. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MyCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = .red
    }
    
    static func nib() -> UINib {
        return .init(nibName: identifier, bundle: nil)
    }
}
