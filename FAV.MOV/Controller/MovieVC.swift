//
//  ViewController.swift
//  FAV.MOV
//
//  Created by Kaushik Talluri on 29/07/20.
//  Copyright © 2020 tckr. All rights reserved.
//

import UIKit

class MovieVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    

    @IBOutlet weak var movieTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTable.dataSource = self
        movieTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getMovies().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableCell") as? MovieTableCell {
            let movie = DataService.instance.getMovies()[indexPath.row]
            cell.updateViews(movie: movie, sender: self)
            return cell
        }
        return MovieTableCell()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ActorsVC = segue.destination as? ActorsVC {
            
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton
            assert(sender as? Actors != nil) // Layer of protection before force unwrapping
            ActorsVC.initActors(actor: sender as! Actors)
        }
    }
    
   

}

