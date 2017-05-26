//
//  ReceiptDetailsReceiptDetailsViewModel.swift
//  Guaranteer
//
//  Created by Joanna on 26/05/2017.
//  Copyright © 2017 The Software House. All rights reserved.
//

import Foundation
import Model

final class ReceiptDetailsViewModel: ReceiptDetailsViewDelegate {

    weak var view: ReceiptDetailsViewProtocol!
    var router: ReceiptDetailsRouterProtocol!

    var receipt: Receipt!
    
    func viewDidLoad() {
        view.populate(with: receipt)
    }

    func viewWillAppear() {

    }

    func viewDidAppear() {

    }
}
