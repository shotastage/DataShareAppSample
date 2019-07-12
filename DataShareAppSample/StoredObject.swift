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
    
    /// 複数のVCから共通して参照するインスタンス
    static let shared = StoreObject()
    
    /// このクラスのDelegateを指定
    weak var delegate : StoreObjectDelegate?
    
    /// 各VCで共有したい変数
    var value: String = "" {
        didSet {
            self.notifyToDelegate()
        }
    }
    
    /// イニシャライザ
    private init() { }
    
    
    /// Delegateに値が変更された時にdidUpdatedValue()を実行するように通知
    private func notifyToDelegate() {
        self.delegate?.didUpdatedValue()
    }
}



/// GeoLocation Service delegate
protocol StoreObjectDelegate: class {
    func didUpdatedValue()
}
