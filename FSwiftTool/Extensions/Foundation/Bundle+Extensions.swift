//
//  Bundle+Extensions.swift
//  FSwiftTool
//
//  Created by Fussa on 2017/8/29.
//  Copyright © 2017年 fussa. All rights reserved.
//

import Foundation

extension Bundle {
    
    /// 找出CFBundleName
    public var fs_namespace: String {
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
}
