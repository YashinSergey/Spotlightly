//
//  MovieListViewController.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import UIKit
import SnapKit
import AsyncDisplayKit

//MARK: - MovieListViewControllerProtocol
protocol MovieListViewControllerProtocol: BaseViewControllerProtocol {
    var tableNode: ASTableNode { get }
}

//MARK: - MovieListViewController
final class MovieListViewController: BaseViewController, MovieListViewControllerProtocol {
    
    //MARK: Properties
    private let presenter: MovieListPresenterProtocol
    
    private(set) lazy var tableNode: ASTableNode = {
        let tableNode = ASTableNode()
        tableNode.view.separatorStyle = .none
        tableNode.allowsSelection = false
        tableNode.view.showsVerticalScrollIndicator = false
        tableNode.view.backgroundColor = .clear
        return tableNode
    }()
    
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
        presenter.viewDidLoad()
    }
    
    //MARK: Private methods
    private func initialize() {
        view.backgroundColor = AppColor.Background.primary(for: interfaceStyle)
    
        view.addSubview(tableNode.view)
        tableNode.view.snp.makeConstraints { maker in
            maker.top.leading.trailing.equalToSuperview()
            maker.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
}
