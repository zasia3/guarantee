//
//  ReceiptsListViewController.swift
//  Guaranteer
//
//  Created by Joanna on 25/05/2017.
//  Copyright © 2017 The Software House. All rights reserved.
//

import UIKit
import iOSKit
import RxSwift
import RxCocoa
import RxDataSources

final class ReceiptsListViewController: ViewController {

    @IBOutlet var tableView: UITableView!
    
    var viewModel: ReceiptsListDelegate!
    var dataSource: ReceiptsDataSource?

    // MARK: Life cycle
    override func onInit() {
        super.onInit()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.viewWillAppear()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.viewDidAppear()
    }

    private func setup() {
        tableView.delegate = self
        setupDataSource()
    }

    private func setupDataSource() {
        dataSource = ReceiptsDataSource(tableView: tableView)

        tableView.rx.itemSelected.subscribe(onNext: { [weak self] indexPath in
            print(indexPath)
        })
    }

    private func deselectSelectedRow() {
        tableView.deselectSelectedRow(animated: false)
    }
}

extension ReceiptsListViewController: ReceiptsListProtocol {

}

extension ReceiptsListViewController: UITableViewDelegate {
}
