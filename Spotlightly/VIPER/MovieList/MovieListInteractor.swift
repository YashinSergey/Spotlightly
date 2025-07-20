//
//  MovieListInteractor.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import Foundation

//MARK: - MovieListInteractorProtocol
protocol MovieListInteractorProtocol: AnyObject {
    
}

//MARK: - MovieListInteractor
final class MovieListInteractor: MovieListInteractorProtocol {
    
    weak var presenter: MovieListPresenterProtocol?
}
