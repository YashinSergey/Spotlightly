//
//  BaseRouter.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import UIKit

//MARK: - BaseRouterProtocol
protocol BaseRouterProtocol: AnyObject {
    
}

//MARK: - BaseRouter
class BaseRouter<T>: BaseRouterProtocol where T: UIViewController {
    
    //MARK: Properties
    weak var viewController: T?
    
    var navigationController: UINavigationController? {
        viewController?.navigationController
    }
    
    //MARK: Init
    init(with viewController: T? = nil) {
        self.viewController = viewController
    }
}
