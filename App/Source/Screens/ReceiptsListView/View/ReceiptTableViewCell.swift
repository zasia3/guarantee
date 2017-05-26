//
// Created by Joanna Zatorska on 26/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import UIKit
import iOSKit

final class ReceiptTableViewCell: UITableViewCell, ReusableView, NibLoadableView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    func populate(title: String, imagePath: String?) {
        titleLabel.text = title

        guard let imagePath = imagePath else { return }
        productImage.image = UIImage(contentsOfFile: imagePath)
    }
}
