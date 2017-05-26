//
//  ReceiptDetailsReceiptDetailsViewModelTests.swift
//  Guaranteer
//
//  Created by Joanna on 26/05/2017.
//  Copyright © 2017 The Software House. All rights reserved.
//

import XCTest
@testable import Guaranteer

class ReceiptDetailsViewModelTests: XCTestCase {

    var viewModel: ReceiptDetailsViewModel!
    var mockView: MockReceiptDetailsView!
    var mockRouter: MockReceiptDetailsRouter!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.

        mockView = MockReceiptDetailsView()
        mockRouter = MockReceiptDetailsRouter()

        viewModel = ReceiptDetailsViewModel()
        viewModel.view = mockView
        viewModel.router = mockRouter
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    /// Tests
    func testViewModelNotNil() {
        XCTAssertNotNil(viewModel)
    }
}
