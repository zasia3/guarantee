//
//  ReceiptsListRouter.swift
//  Guaranteer
//
//  Created by Joanna on 25/05/2017.
//  Copyright © 2017 The Software House. All rights reserved.
//

import UIKit
//import Utilities
//
final class ReceiptsListRouter: Router {

    static func instantiateViewController(navigationController: UINavigationController) -> ReceiptsListViewController {

        let router = ReceiptsListRouter(navigationController: navigationController)
        let viewModel = ReceiptsListViewModel()
        viewModel.router = router
        let viewController = ReceiptsListViewController.instantiateFromStoryboard()
        viewModel.view = viewController
        viewController.viewModel = viewModel
        return viewController
    }

    static func show(navigationController: UINavigationController, animated: Bool = true) {
        navigationController.pushViewController(instantiateViewController(navigationController: navigationController), animated: animated)
    }

    static func showAsRoot(navigationController: UINavigationController, animated: Bool = false) {
        navigationController.setViewControllers([instantiateViewController(navigationController: navigationController)], animated: animated)
    }
}

extension ReceiptsListRouter: ReceiptsListRouterProtocol {

}
