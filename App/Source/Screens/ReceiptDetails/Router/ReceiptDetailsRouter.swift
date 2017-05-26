//
//  ReceiptDetailsReceiptDetailsRouter.swift
//  Guaranteer
//
//  Created by Joanna on 26/05/2017.
//  Copyright © 2017 The Software House. All rights reserved.
//

import UIKit
import iOSKit
import Model

final class ReceiptDetailsRouter: Router {

    static func instantiateViewController(navigationController: UINavigationController, receipt: Receipt) -> ReceiptDetailsViewController {

        let router = ReceiptDetailsRouter(navigationController: navigationController)
        let viewModel = ReceiptDetailsViewModel()
        viewModel.router = router
        viewModel.receipt = receipt
        let viewController = ReceiptDetailsViewController.instantiateFromStoryboard()
        viewModel.view = viewController
        viewController.delegate = viewModel
        return viewController
    }

    static func show(navigationController: UINavigationController, animated: Bool = true, receipt: Receipt) {
        navigationController.pushViewController(instantiateViewController(navigationController: navigationController, receipt: receipt), animated: animated)
    }

    static func showAsRoot(navigationController: UINavigationController, animated: Bool = false, receipt: Receipt) {
        navigationController.setViewControllers([instantiateViewController(navigationController: navigationController, receipt: receipt)], animated: animated)
    }
}

extension ReceiptDetailsRouter: ReceiptDetailsRouterProtocol {

}
