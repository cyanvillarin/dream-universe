//
//  UIColorExtension.swift
//  CatalogueAppTemplate
//
//  Created by CYAN on 2021/04/29.
//

import UIKit

extension UIColor {
   convenience init(hexString: String, alpha: CGFloat = 1.0) {
       let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
       let scanner = Scanner(string: hexString)
       var color: UInt64 = 0
       scanner.scanHexInt64(&color)
       let mask = 0x000000FF
       let r = Int(color >> 16) & mask
       let g = Int(color >> 8) & mask
       let b = Int(color) & mask
       let red   = CGFloat(r) / 255.0
       let green = CGFloat(g) / 255.0
       let blue  = CGFloat(b) / 255.0
       self.init(red:red, green:green, blue:blue, alpha:alpha)
   }
}

