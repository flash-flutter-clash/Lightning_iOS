//
//  String+Extension.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import Foundation

public extension String{
   func tr(comment:String = "")->String{
        return NSLocalizedString(self, comment: comment)
    }
}
