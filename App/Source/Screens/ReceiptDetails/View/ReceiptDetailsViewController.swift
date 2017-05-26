//
//  ReceiptDetailsReceiptDetailsViewController.swift
//  Guaranteer
//
//  Created by Joanna on 26/05/2017.
//  Copyright © 2017 The Software House. All rights reserved.
//

import UIKit
import iOSKit
import Model

final class ReceiptDetailsViewController: ViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var photosCollectionView: UIView!
    
    @IBOutlet weak var receiptTitleLabel: UILabel!
    @IBOutlet weak var shopTitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var delegate: ReceiptDetailsViewDelegate!

    // MARK: Life cycle
    override func onInit() {
        super.onInit()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        delegate.viewWillAppear()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        delegate.viewDidAppear()
    }

}

extension ReceiptDetailsViewController: ReceiptDetailsViewProtocol {
    func populate(with receipt: Receipt) {
        receiptTitleLabel.text = receipt.title
        dateLabel.text = receipt.date.description
        shopTitleLabel.text = receipt.shopName
    }
}
