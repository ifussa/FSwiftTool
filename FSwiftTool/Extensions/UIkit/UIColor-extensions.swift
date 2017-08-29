//
//  UIColor-extensions.swift
//  FSwiftTool
//
//  Created by Fussa on 2017/8/29.
//  Copyright © 2017年 fussa. All rights reserved.
//

import UIKit

extension UIColor {
    
    /// 随机色
    public static var fs_random: UIColor {
        let r = Int(arc4random_uniform(255))
        let g = Int(arc4random_uniform(255))
        let b = Int(arc4random_uniform(255))
        return UIColor(red: r, green: g, blue: b)!
    }
    public var fs_hexString: String {
        var red:    CGFloat = 0
        var green:    CGFloat = 0
        var blue:    CGFloat = 0
        var alpha:    CGFloat = 0
        
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        let rgb: Int = (Int)(red*255)<<16 | (Int)(green*255)<<8 | (Int)(blue*255)<<0
        return NSString(format:"#%06x", rgb).uppercased as String
    }
}

public extension UIColor {
    public convenience init?(red: Int, green: Int, blue: Int, transparency: CGFloat = 1) {
        guard red >= 0 && red <= 255 else {
            return nil
        }
        guard green >= 0 && green <= 255 else {
            return nil
        }
        guard blue >= 0 && blue <= 255 else {
            return nil
        }
        var trans = transparency
        if trans < 0 { trans = 0 }
        if trans > 1 { trans = 1 }
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: trans)
    }
}
