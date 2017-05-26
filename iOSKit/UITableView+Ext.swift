//
// Created by Joanna Zatorska on 26/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import UIKit

public extension UITableView {

    public func register<T: UITableViewCell>(_: T.Type) where T: ReusableView {
        self.register(T.self, forCellReuseIdentifier: T.reuseId)
    }

    public func register<T: UITableViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)

        self.register(nib, forCellReuseIdentifier: T.reuseId)
    }

    public func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.reuseId, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseId)")
        }

        return cell
    }
    
    public func deselectSelectedRow(animated: Bool) {
        if let indexPath = indexPathForSelectedRow {
            deselectRow(at: indexPath, animated: animated)
        }
    }
}
