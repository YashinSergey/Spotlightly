//
//  MovieListModuleBuilder.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import UIKit

//MARK: MovieListModuleBuilder
final class MovieListModuleBuilder {
    static func build() -> UIViewController {
        let interactor = MovieListInteractor()
        let router = MovieListRouter()
        let presenter = MovieListPresenter(interactor: interactor, router: router)
        let viewController = MovieListViewController(presenter: presenter)
        router.viewController = viewController
        presenter.view = viewController
        interactor.presenter = presenter
        return viewController
    }
}
