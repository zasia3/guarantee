//
// Created by Joanna Zatorska on 25/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import Foundation
import Model
import RxDataSources

final class Section: SectionModelType {

    typealias Item = Receipt

    public var items: [Item]

    var title: String

    public init(original: Section, items: [Item]) {
        title = original.title
        self.items = items
    }

    init(title: String, items: [Receipt]) {
        self.title = title
        self.items = items
    }
}