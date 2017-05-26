//
//  Router.swift
//  Guaranteer
//
//  Created by Joanna Zatorska on 25/05/2017.
//  Copyright © 2017 Joanna Zatorska. All rights reserved.
//

import Foundation
import UIKit

class Router: NSObject, RouterProtocol {
    private(set) weak var navigationController: UINavigationController!
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
