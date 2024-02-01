//
//  UIColor+Extension.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import Foundation
import UIKit
extension UIColor{
    public static func hex(hexColor: Int, alpha:CGFloat? = 1.0) -> UIColor {
            let red = CGFloat((hexColor & 0xff0000) >> 16) / 255.0
            let green = CGFloat((hexColor & 0xff00) >> 8) / 255.0
            let blue = CGFloat((hexColor & 0xff) >> 0) / 255.0
            let alpha = alpha!
            
            // Create color object, specifying alpha as well
            let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
            return color
        }
        
        
        var redValue: CGFloat{
            return cgColor.components! [0]
        }
        
        var greenValue: CGFloat{
            return cgColor.components! [1]
        }
        
        var blueValue: CGFloat{
            return cgColor.components! [2]
        }
        
        var alphaValue: CGFloat{
            return cgColor.components! [3]
        }
        
        // credits to @andreaantonioni for this addition
        var isWhiteText: Bool {
            let red = self.redValue * 255
            let green = self.greenValue * 255
            let blue = self.blueValue * 255
            
            // https://en.wikipedia.org/wiki/YIQ
            // https://24ways.org/2010/calculating-color-contrast/
            let yiq = ((red * 299) + (green * 587) + (blue * 114)) / 1000
            return yiq < 192
        }

}
