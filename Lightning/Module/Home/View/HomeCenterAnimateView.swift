//
//  HomeCenterAnimateView.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import UIKit

class HomeCenterAnimateView: NiblessView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    
    
    //    MARK: method
    
    func setupUI(){
        self.outsideImageView.isHidden = false
        self.centerImageView.isHidden = false
        self.btnImageView.isHidden = false
        self.lightningImageView.isHidden = false
        self.tapLabel.isHidden = false
    }
    
    
    func startNormalAnimate(){
        self.outsideImageView.layer.removeAnimation(forKey: "rotationAnimation")
        // 创建一个CABasicAnimation实例
        let outsideAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        outsideAnimation.toValue = NSNumber(value: Double.pi * 2) // 360度
        outsideAnimation.duration = 5.0 // 动画时长
        outsideAnimation.repeatCount = Float.greatestFiniteMagnitude // 无限循环
        outsideAnimation.autoreverses = false // 自动逆向播放
        // 将动画添加到UIImageView的layer上
        self.outsideImageView.layer.add(outsideAnimation, forKey: "rotationAnimation")
        
        
        self.centerImageView.layer.removeAnimation(forKey: "rotationAnimation")
        // 创建一个CABasicAnimation实例
        let centerAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        centerAnimation.toValue = NSNumber(value: Double.pi * 2) // 360度
        centerAnimation.duration = 3.0 // 动画时长
        centerAnimation.repeatCount = Float.greatestFiniteMagnitude // 无限循环
        centerAnimation.autoreverses = false // 自动逆向播放
        // 将动画添加到UIImageView的layer上
        self.centerImageView.layer.add(centerAnimation, forKey: "rotationAnimation")
    }
    
    
    //    MARK: property
    lazy var outsideImageView: UIImageView = {
        let bgImage = UIImage(named: "outside_cycle")
        let imgView = UIImageView(image: bgImage)
        imgView.contentMode = .scaleAspectFit
        self.addSubview(imgView)
        imgView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.left.right.equalToSuperview()
            
        }
        return imgView
    }()
    
    lazy var centerImageView: UIImageView = {
        let bgImage = UIImage(named: "center_cycle")
        let imgView = UIImageView(image: bgImage)
        imgView.contentMode = .scaleAspectFit
        self.addSubview(imgView)
        imgView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.left.right.equalTo(self.outsideImageView).inset(26)
        }
        return imgView
    }()
    
    lazy var btnImageView: UIImageView = {
        let bgImage = UIImage(named: "home_btn")
        let imgView = UIImageView(image: bgImage)
        imgView.contentMode = .scaleAspectFit
        self.addSubview(imgView)
        imgView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.left.right.equalTo(self.centerImageView ).inset(18)
        }
        return imgView
    }()
    
    
    lazy var lightningImageView: UIImageView = {
        let bgImage = UIImage(named: "home_lightning")
        let imgView = UIImageView(image: bgImage)
        imgView.contentMode = .scaleAspectFit
        self.addSubview(imgView)
        imgView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(self.btnImageView).offset(-20)
            make.size.equalTo(CGSize(width: 48, height: 75))
        }
        return imgView
    }()
    
    lazy var  tapLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.hex(hexColor: 0xffffff)
        label.font = UIFont.medium(size: 18)
        label.text = "home_tap_here".tr()
        self.addSubview(label)
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.lightningImageView.snp.bottom).offset(15)
            
        }
        return label
    }()
    
    
}
