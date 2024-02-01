//
//  LNGNavController.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import UIKit

class LGNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
//    MARK: methods
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if(self.viewControllers.count > 0){
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
   


}

//MARK: UINavigationControllerDelegate
extension LGNavController:UINavigationControllerDelegate{
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        let isRootViewController = viewController == navigationController.viewControllers.first
           
        self.interactivePopGestureRecognizer?.delegate = self
           self.interactivePopGestureRecognizer?.isEnabled = !isRootViewController
    }
}

//MARK: UIGestureRecognizerDelegate
extension LGNavController: UIGestureRecognizerDelegate{
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        if(gestureRecognizer.isKind(of: UIScreenEdgePanGestureRecognizer.self)){
            return false
        }
        return true
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return !gestureRecognizer.isKind(of: UIScreenEdgePanGestureRecognizer.self)
       

    }
}
