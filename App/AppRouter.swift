//
//  AppRouter.swift
//  Guaranteer
//
//  Created by Joanna Zatorska on 25/05/2017.
//  Copyright © 2017 Joanna Zatorska. All rights reserved.
//

import Foundation
import UIKit

final class AppRouter: Router {
    
    func showFirstScreen() {
        ReceiptsListRouter.showAsRoot(navigationController: navigationController)
    }
}
