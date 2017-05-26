//
// Created by Joanna Zatorska on 26/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import Foundation

public protocol NibLoadableView: class {
    static var nibName: String { get }
}

public extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}