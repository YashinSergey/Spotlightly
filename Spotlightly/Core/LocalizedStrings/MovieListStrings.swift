//
//  MovieListStrings.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import Foundation

enum MovieListStrings: String {
    
    /// Movie title
    case movieTitle
    
    var prefix: String? {
        "movieList"
    }

    var tableName: String {
        "MovieList"
    }
}
