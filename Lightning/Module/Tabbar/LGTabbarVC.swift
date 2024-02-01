//
//  LNTabbarVC.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import UIKit
import ESTabBarController_swift

class LGTabbarVC: ESTabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.setupUI()
    }
    

    func setupUI(){
        let v1 = LGHomeVC()
        let v2 = RootViewController()
        let v3 = RootViewController()
        let v4 = RootViewController()
        
        v1.tabBarItem = ESTabBarItem.init(TabbarContentView(), title: "tabbar_home".tr(), image: UIImage(named: "home_normal")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "home_selected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        v2.tabBarItem = ESTabBarItem.init(TabbarContentView(),title: "tabbar_location".tr(), image: UIImage(named: "location_normal"), selectedImage: UIImage(named: "location_selected"))
        v3.tabBarItem = ESTabBarItem.init(TabbarContentView(),title: "tabbar_vip".tr(), image: UIImage(named: "vip_normal"), selectedImage: UIImage(named: "vip_selected"))
        v4.tabBarItem = ESTabBarItem.init(TabbarContentView(),title: "tabbar_profile".tr(), image: UIImage(named: "profile_normal"), selectedImage: UIImage(named: "profile_selected"))
       
       
        self.viewControllers = [v1,v2,v3,v4]
        self.tabBar.backgroundColor = UIColor.hex(hexColor: 0x01040F)
        
    }
    
    
}
