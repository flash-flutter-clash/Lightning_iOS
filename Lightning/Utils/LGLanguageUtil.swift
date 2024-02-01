//
//  LGLanguageUtil.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import Foundation

class LGLanguageUtil{
    static func isCurrentZH() -> Bool{
        let currentLocale = Locale.current
        
        if let languageCode = currentLocale.language.languageCode?.identifier,
           let regionCode = currentLocale.region?.identifier
        {
            let identifier = NSLocale.localeIdentifier(fromComponents: [
                NSLocale.Key.languageCode.rawValue: languageCode,
                NSLocale.Key.countryCode.rawValue: regionCode
            ])
            return identifier == "zh_CN"
           
        }
        return false
    }
    
    static func getCurrentLanguageCode() ->String{
        if(LGLanguageUtil.isCurrentZH()){
            return "zh_CN"
        }
        return "en_US"

    }
}
