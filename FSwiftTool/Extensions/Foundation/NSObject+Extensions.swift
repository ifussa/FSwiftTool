//
//  NSObject+Extensions.swift
//  FSwiftTool
//
//  Created by Fussa on 2017/8/29.
//  Copyright © 2017年 fussa. All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    /// 简单的提示框
    func fs_showSingerAlert(_ message: String) {
        self.fs_showSingerAlert(message, completionHandler: nil)
    }
    func fs_showSingerAlert(_ message: String, completionHandler: (() -> Void)?) {
        let alertController = UIAlertController(title: "提示" ,message: message,preferredStyle: .alert)
        let okAction = UIAlertAction(title: "确认", style: .default) { (_) in
            if completionHandler != nil {
                completionHandler!()
            }
        }
        alertController.addAction(okAction)
        // 顯示提示框
        let vc = UIApplication().keyWindow?.rootViewController
        vc?.present(alertController, animated: true, completion: nil)
    }
    func fs_showAlert(_ message: String, confirm: (() -> Void)?) {
        let alertController = UIAlertController(title: "提示", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "确认", style: .default) { (_) in
            if confirm != nil {
                confirm!()
            }
        }
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        let vc = UIApplication().keyWindow?.rootViewController
        vc?.present(alertController, animated: true, completion: nil)
    }
}


