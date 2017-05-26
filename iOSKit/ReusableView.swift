//
// Created by Joanna Zatorska on 26/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import Foundation

public protocol ReusableView: class {
    static var reuseId: String { get }
}

public extension ReusableView {
    static var reuseId: String {
        return String(describing: self)
    }
}