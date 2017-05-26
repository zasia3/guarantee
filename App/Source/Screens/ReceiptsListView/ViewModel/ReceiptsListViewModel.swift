//
//  ReceiptsListViewModel.swift
//  Guaranteer
//
//  Created by Joanna on 25/05/2017.
//  Copyright © 2017 The Software House. All rights reserved.
//

import Foundation
import Model

final class ReceiptsListViewModel: ReceiptsListDelegate {

    weak var view: ReceiptsListProtocol!
    var router: ReceiptsListRouterProtocol!


    func viewDidLoad() {

    }

    func viewWillAppear() {

    }

    func viewDidAppear() {

    }
    
    func showDetails(for item: Receipt) {
        router.showDetails(for: item)
    }
}
