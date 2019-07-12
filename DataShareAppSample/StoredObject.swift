//
//  StoredObject.swift
//  DataShareAppSample
//
//  Created by Shota Shimazu on 2019/07/12.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import Foundation
import UIKit


final class StoreObject {
    
    /// Shared Instance
    static let shared = StoreObject()
    
    weak var delegate : StoreObjectDelegate?
    
    var value: String = "" {
        didSet {
            self.notifyToDelegate()
        }
    }
    
    /// Constructor
    private init() { }
    
    private func notifyToDelegate() {
        self.delegate?.didUpdatedValue()
    }
}



/// GeoLocation Service delegate
protocol StoreObjectDelegate: class {
    func didUpdatedValue()
}
