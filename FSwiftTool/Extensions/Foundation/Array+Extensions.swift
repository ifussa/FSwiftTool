//
//  Array+Extensions.swift
//  FSwiftTool
//
//  Created by Fussa on 2017/8/29.
//  Copyright © 2017年 fussa. All rights reserved.
//

import Foundation

public extension Array where Element: BinaryInteger {
    
    public func fs_sum() ->Element {
        return reduce(0, +)
    }
    
}
