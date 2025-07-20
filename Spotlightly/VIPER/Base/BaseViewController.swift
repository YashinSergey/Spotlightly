//
//  BaseViewController.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import UIKit

//MARK: - BaseViewControllerProtocol
protocol BaseViewControllerProtocol where Self: UIViewController {
    
}

protocol BaseViewProtocol: InterfaceStyleViewProtocol {
    
}

// MARK: - BaseViewController
class BaseViewController: UIViewController, BaseViewControllerProtocol, BaseViewProtocol {
    
    private var presenter: BasePresenterProtocol?
    var interfaceStyle: AppInterfaceStyle
    
    //MARK: Init
    init(presenter: BasePresenterProtocol?, interfaceStyle: AppInterfaceStyle = SpotlightlyApp.shared.currentInterfaceStyle) {
        self.presenter = presenter
        self.interfaceStyle = interfaceStyle
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("don't use storyboards!")
    }
}
