//
//  DataServices.swift
//  FAV.MOV
//
//  Created by Kaushik Talluri on 29/07/20.
//  Copyright © 2020 tckr. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let movies = [
        Movies(title: "Johnny English Reborn", imageName: "movie01.jpg"),
        Movies(title: "Mr. Bean's Holiday", imageName: "movie02.jpg"),
        Movies(title: "The Social Network", imageName: "movie03.jpg"),
        Movies(title: "Avengers: Endgame", imageName: "movie04.jpg")
        
    ]
    
    func getMovies() -> [Movies] {
        return movies
    }
    
    private let movie01 = [
        Actors(title: "Rowan Atkinson", imageName: "mov01-actor01.jpg"),
        Actors(title: "Rosamund Pike", imageName: "mov01-actor02.jpg"),
        Actors(title: "Gillian Anderson", imageName: "mov01-actor03.jpg"),
        Actors(title: "Dominic West", imageName: "mov01-actor04.jpg"),
        Actors(title: "Daniel Kaluuya", imageName: "mov01-actor05.jpg"),
    ]
    
    private let movie02 = [
        Actors(title: "Rowan Atkinson", imageName: "mov02-actor01.jpg"),
        Actors(title: "Emma de Caunes", imageName: "mov02-actor02.jpg"),
        Actors(title: "Willem Dafoe", imageName: "mov02-actor03.jpg")
    ]
    
    private let movie03 = [
        Actors(title: "Jesse Eisenberg", imageName: "mov03-actor01.jpg"),
        Actors(title: "Andrew Garfield", imageName: "mov03-actor02.jpg"),
        Actors(title: "Justin Timberlake", imageName: "mov03-actor03.jpg")
    ]
    private let movie04 = [
        Actors(title: "Robert Downey, Jr.", imageName: "mov04-actor01.jpg"),
        Actors(title: "Chris Evans", imageName: "mov04-actor02.jpg"),
        Actors(title: "Chris Hemsworth", imageName: "mov04-actor03.jpg"),
        Actors(title: "Scarlett Johansson", imageName: "mov04-actor04.jpg"),
        Actors(title: "Tom Holland", imageName: "mov04-actor05.jpg")
    ]
    
    func getActor(forMovieTitle title: String) -> [Actors] {
        switch title {
        case "Johnny English Reborn":
            return getMovie01()
        case "Mr. Bean's Holiday":
            return getMovie02()
        case "The Social Network":
            return getMovie03()
        case "Avengers: Endgame":
            return getMovie04()
        default:
            return getMovie01()
        }
    }
    
    func getMovie01() -> [Actors] {
        return movie01
    }
    func getMovie02() -> [Actors] {
        return movie02
    }
    func getMovie03() -> [Actors] {
        return movie03
    }
    func getMovie04() -> [Actors] {
        return movie04
    }
    
    func getInfo(forActorName actor: String) -> String {
        var Info: String = "";
        switch actor {
        case "Rowan Atkinson":
            Info = "Rowan Sebastian Atkinson CBE (born 6 January 1955) is an English actor, comedian, and writer. He is best known for his work on the sitcoms Blackadder (1983–1989) and Mr. Bean (1990–1995). Atkinson first came to prominence in the BBC sketch comedy show Not the Nine O'Clock News (1979–1982), receiving the 1981 BAFTA for Best Entertainment Performance, and via his participation in The Secret Policeman's Ball (1979). His other work includes the James Bond film Never Say Never Again (1983), playing a bumbling vicar in Four Weddings and a Funeral (1994), voicing the red-billed hornbill Zazu in The Lion King (1994), and playing jewellery salesman Rufus in Love Actually (2003). Atkinson also featured in the BBC sitcom The Thin Blue Line (1995–1996). His work in theatre includes the 2009 West End revival of the musical Oliver!."
            return Info
        case "Robert Downey, Jr.":
        Info = "Robert John Downey Jr. (born April 4, 1965)[1] is an American actor, producer, and singer. His career has been characterized by critical and popular success in his youth, followed by a period of substance abuse and legal troubles, before a resurgence of commercial success in middle age. In 2008, Downey was named by Time magazine among the 100 most influential people in the world,[2][3] and from 2013 to 2015, he was listed by Forbes as Hollywood's highest-paid actor.[2][4] His films have grossed over $14.4 billion worldwide,[5] making him the second highest-grossing box-office star of all time."
        return Info
        default:
            return "\(actor)'s information to be updated"
        }
    }
    
    
}
