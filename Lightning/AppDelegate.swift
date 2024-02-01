//
//  AppDelegate.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = LGTabbarVC()
        let nav = LGNavController(rootViewController: rootVC)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        return true
    }

   

}


extension AppDelegate{
   
   
}
