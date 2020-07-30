//
//  ActorsVC.swift
//  FAV.MOV
//
//  Created by Kaushik Talluri on 29/07/20.
//  Copyright © 2020 tckr. All rights reserved.
//

import UIKit

class ActorsVC: UIViewController {
    
    @IBOutlet weak var actorImageView: UIImageView!
       @IBOutlet weak var actorNameLabel: UILabel!
       @IBOutlet weak var actorInfoLabel: UILabel!
       
       private(set) public var actorName = ""
       private(set) public var actorImageName = ""
       private(set) public var actorInfo = ""
       
       func initActors(actor: Actors) {
        actorName = actor.title
        actorImageName = actor.imageName
        navigationItem.title = actor.title
       }
       
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           actorImageView.image = UIImage(named: actorImageName)
           actorNameLabel.text = actorName
           actorInfoLabel.text = DataService.instance.getInfo(forActorName: actorName)
           
       }
    

   
}
