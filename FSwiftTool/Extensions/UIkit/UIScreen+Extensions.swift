
//
//  UIScreen+Extensions.swift
//  FSwiftTool
//
//  Created by Fussa on 2017/8/29.
//  Copyright © 2017年 fussa. All rights reserved.
//

import UIKit

extension UIScreen {
    
    /// 屏幕物理宽度
    public static func fs_screenWidth() -> CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    /// 屏幕的物理高度
    public static func fs_screenHeight() -> CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    /// 屏幕的分辨率
    public static func fs_scale () -> CGFloat {
        return UIScreen.main.scale
    }
}

