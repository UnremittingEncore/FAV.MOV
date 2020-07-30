//
//  ActorsCell.swift
//  FAV.MOV
//
//  Created by Kaushik Talluri on 29/07/20.
//  Copyright © 2020 tckr. All rights reserved.
//

import UIKit

class MovieTableCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
 
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var actorCollection: UICollectionView!
    
    private var sender: UIViewController!
    
    private(set) public var actors = [Actors]()
    
    func updateViews(movie: Movies, sender: UIViewController) {
        movieTitle.text = movie.title
        movieImage.image = UIImage(named: movie.imageName)
        actors = DataService.instance.getActor(forMovieTitle: movieTitle.text!)
        actorCollection.dataSource = self
        actorCollection.delegate = self
        self.sender = sender
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actors.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorsCollectionViewCell", for: indexPath) as? ActorsCollectionViewCell  {
            let actor = actors[indexPath.row]
            cell.updateActors(actor: actor)
            return cell
        }
        return ActorsCollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let actor = actors[indexPath.row]
        sender.performSegue(withIdentifier: "ActorsVC", sender: actor)
    }
    
}


