//
// Created by Joanna Zatorska on 26/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import Foundation
import Model

class DataMock {

    static func getSection() -> Section {

        let items = [
            Receipt(title: "Telefon", date: Date(), shopName: "Saturn", receiptPhotoUrl: nil, itemPhotoUrl: nil),
            Receipt(title: "Telewizor", date: Date(), shopName: "MediaMarkt", receiptPhotoUrl: nil, itemPhotoUrl: nil),
            Receipt(title: "Kamera", date: Date(), shopName: "Saturn", receiptPhotoUrl: nil, itemPhotoUrl: nil)
        ]

        return Section(title: "Elektronika", items: items)
    }
}