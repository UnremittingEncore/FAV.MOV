//
//  ActorsCollectionViewCell.swift
//  FAV.MOV
//
//  Created by Kaushik Talluri on 29/07/20.
//  Copyright © 2020 tckr. All rights reserved.
//

import UIKit

class ActorsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ActorImage: UIImageView!
    @IBOutlet weak var ActorLabel: UILabel!
    
    func updateActors(actor: Actors) {
        ActorImage.image = UIImage(named: actor.imageName)
        ActorLabel.text = actor.title
    }
}
