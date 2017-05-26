//
// Created by Joanna Zatorska on 25/05/2017.
// Copyright (c) 2017 Joanna Zatorska. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources
import Model
import iOSKit

final class ReceiptsDataSource {
    private let dataSource = RxTableViewSectionedReloadDataSource<Section>()
    private let disposeBag = DisposeBag()

    private var tableView: UITableView!
    private var data: [Section] = []

    init(tableView: UITableView) {
        self.tableView = tableView
        tableView.register(ReceiptTableViewCell.self)
        setupDataSource()
    }
    
    func itemFor(indexPath: IndexPath) -> Receipt {
        return data[indexPath.section].items[indexPath.row]
    }

    private func setupDataSource() {
        data = [DataMock.getSection()]
        let items = Observable.just(data)
        dataSource.configureCell = { _, _, indexPath, item in
            return self.cell(for: item, at: indexPath)
        }
        
        items
            .bindTo(self.tableView.rx.items(dataSource: dataSource))
            .addDisposableTo(disposeBag)
    }

    private func cell(for item: Receipt, at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as ReceiptTableViewCell
        cell.populate(title: item.title, imagePath: item.itemPhotoUrl)
        return cell
    }

}
