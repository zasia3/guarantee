//
// Created by Joanna Zatorska on 25/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import Foundation

public protocol ViewModelProtocol {
    /// Notify view model that view did load
    func viewDidLoad()
    /// Notify view model that view is about to be presented
    func viewWillAppear()
    /// Notify view model that view did present
    func viewDidAppear()
}