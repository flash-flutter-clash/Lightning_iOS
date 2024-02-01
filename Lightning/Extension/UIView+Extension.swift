//
//  UIView+Extension.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import Foundation
import UIKit

public extension UIView{
    func enableDebugLine(){
        self.layer.borderColor = UIColor.hex(hexColor: 0xFFBD1A).cgColor
        self.layer.borderWidth = 1
    }
}
