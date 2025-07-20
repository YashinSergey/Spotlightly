//
//  MovieListPresenter.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import Foundation

//MARK: - MovieListPresenterProtocol
protocol MovieListPresenterProtocol: BasePresenterProtocol {
    
}

//MARK: - MovieListPresenter
final class MovieListPresenter: BasePresenter, MovieListPresenterProtocol {
    
    //MARK: Properties
    weak var view: MovieListViewControllerProtocol?
    private let interactor: MovieListInteractorProtocol
    private let router: MovieListRouterProtocol
    
    //MARK: Init
    init(interactor: MovieListInteractorProtocol, router: MovieListRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
