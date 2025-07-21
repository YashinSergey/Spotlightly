//
//  MovieListPresenter.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import Foundation
import AsyncDisplayKit

//MARK: - MovieListPresenterProtocol
protocol MovieListPresenterProtocol: BasePresenterProtocol {
    func viewDidLoad()
    
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
    
    //MARK: Public methods
    func viewDidLoad() {
        guard let view else { return }
        view.tableNode.delegate = self
        view.tableNode.dataSource = self
    }
}

extension MovieListPresenter: ASTableDelegate, ASTableDataSource {
    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
        return {
            #warning("Set title")
            let cellNode = MovieListCellNode(title: "Test")
            return cellNode
        }
    }
}
