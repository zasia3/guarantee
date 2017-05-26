//
//  ReceiptDetailsReceiptDetailsViewDelegate.swift
//  Guaranteer
//
//  Created by Joanna on 26/05/2017.
//  Copyright © 2017 The Software House. All rights reserved.
//

import Foundation

protocol ReceiptDetailsViewDelegate {

    /// Notify view model that view did load
    func viewDidLoad()
    /// Notify view model that view is about to be presented
    func viewWillAppear()
    /// Notify view model that view did present
    func viewDidAppear()
}
