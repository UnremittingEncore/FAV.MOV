//
//  ActorsCell.swift
//  FAV.MOV
//
//  Created by Kaushik Talluri on 29/07/20.
//  Copyright © 2020 tckr. All rights reserved.
//

import UIKit

class MovieTableCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var actorCollection: UICollectionView!
    
}


