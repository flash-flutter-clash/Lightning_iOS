//
//  UIFont+Extension.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import Foundation
import UIKit
public extension UIFont{
    static func bold(size:CGFloat)-> UIFont{
        return UIFont.systemFont(ofSize: size, weight: Weight.bold)
    }
    
    static func medium(size:CGFloat)-> UIFont{
        return UIFont.systemFont(ofSize: size, weight: Weight.medium)
    }
    
    static func regular(size:CGFloat)-> UIFont{
        return UIFont.systemFont(ofSize: size, weight: Weight.regular)
    }
}
