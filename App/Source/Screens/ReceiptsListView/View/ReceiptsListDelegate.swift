//
//  ReceiptsListDelegate.swift
//  Guaranteer
//
//  Created by Joanna on 25/05/2017.
//  Copyright © 2017 The Software House. All rights reserved.
//

import Foundation
import iOSKit
import Model

protocol ReceiptsListDelegate: ViewModelProtocol {
    
    func showDetails(for item: Receipt)

}
