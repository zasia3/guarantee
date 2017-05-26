//
// Created by Joanna Zatorska on 25/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import Foundation

public struct Receipt {

    public let title: String!
    public let date: Date!
    public let shopName: String?
    public let receiptPhotoUrl: String?
    public let itemPhotoUrl: String?

    public init(title: String, date: Date, shopName: String?, receiptPhotoUrl: String?, itemPhotoUrl: String?) {
        self.title = title
        self.date = date
        self.shopName = shopName
        self.receiptPhotoUrl = receiptPhotoUrl
        self.itemPhotoUrl = itemPhotoUrl
    }
}