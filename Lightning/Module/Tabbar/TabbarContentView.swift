//
//  TabbarContentView.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import UIKit
import ESTabBarController_swift
class TabbarContentView: ESTabBarItemContentView {
        
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        textColor = UIColor.hex(hexColor: 0x9E9E9E)
        highlightTextColor = UIColor.hex(hexColor: 0xFFFFFF)
        self.renderingMode = .alwaysOriginal
        
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
