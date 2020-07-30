//
//  Movies.swift
//  FAV.MOV
//
//  Created by Kaushik Talluri on 29/07/20.
//  Copyright © 2020 tckr. All rights reserved.
//

import Foundation

struct Movies {
    private(set) public var title: String
    private(set) public var imageName: String
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
