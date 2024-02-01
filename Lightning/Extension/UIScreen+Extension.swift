//
//  UIScreen+Extension.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import Foundation
import UIKit
public extension UIScreen{
    static func screenWidth()->CGFloat{
        return UIScreen.main.bounds.width
    }
    
    static func screenHeight()->CGFloat{
        return UIScreen.main.bounds.height
    }
}
