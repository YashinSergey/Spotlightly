//
//  MovieListViewController.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import Foundation

//MARK: - MovieListViewControllerProtocol
protocol MovieListViewControllerProtocol: BaseViewControllerProtocol {
    
}

//MARK: - MovieListViewController
final class MovieListViewController: BaseViewController, MovieListViewControllerProtocol {
    
    //MARK: Properties
    private let presenter: MovieListPresenterProtocol
    
    //MARK: Init
    init(presenter: MovieListPresenterProtocol) {
        self.presenter = presenter
        super.init(presenter: presenter)
    }
    
    required init?(coder: NSCoder) {
        fatalError("don't use storyboards!")
    }
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    //MARK: Private methods
    private func initialize() {
        view.backgroundColor = AppColor.Background.primary(for: interfaceStyle)
    }
}
