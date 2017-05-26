//
// Created by Joanna Zatorska on 25/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import UIKit

open class ViewController: UIViewController {

    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        onInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        onInit()
    }

    open func onInit() {

    }

    open override func viewDidLoad() {
        super.viewDidLoad()
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("=== UI === Presenting \(String(describing: type(of: self))) ===")
    }
}
