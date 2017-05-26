//
// Created by Joanna Zatorska on 25/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import UIKit

extension UIViewController {

    public class func instantiateFromStoryboard() -> Self {
        return self.instantiateFromStoryboard(self)
    }

    private class func instantiateFromStoryboard<T>(_ type: T.Type) -> T {
        let name = String(describing: self).replacingOccurrences(of: "ViewController", with: "")

        let storyboard = UIStoryboard(name: name+"Storyboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: name)
        return vc as! T
    }
}

