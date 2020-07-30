//
//  MovieActorsCollectionViewCell.swift
//  FAV.MOV
//
//  Created by Kaushik Talluri on 29/07/20.
//  Copyright © 2020 tckr. All rights reserved.
//

import UIKit

class ActorsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var movieActorImage: UIImageView!
    @IBOutlet weak var movieActorLabel: UILabel!
    
    func updateViews(actor: Actors) {
        movieActorImage.image = UIImage(named: actor.imageName)
        movieActorLabel.text = actor.title
    }
}
