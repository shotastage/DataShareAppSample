//
//  SecondViewController.swift
//  DataShareAppSample
//
//  Created by Shota Shimazu on 2019/07/12.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, StoreObjectDelegate {

    @IBOutlet weak var textarea: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    
    // StoreObjectの共有オブジェクトをdataに代入
    // data.共有したい変数名でデータ取得できます, data.共有したい変数名 に代入することで自動的にデータは更新されます
    let data = StoreObject.shared
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.textarea.text = data.value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func didUpdatedValue() {
        // もし、値が変更された時に実行したいものがあればこの中に記述する
        print("値が更新されました")
    }

    @IBAction func buttonTapped(_ sender: Any) {
        data.value = inputField.text!
        self.textarea.text = data.value
    }
    
}

