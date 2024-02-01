//
//  LGHomeVC.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import UIKit

class LGHomeVC: LGBIZFullBGVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.centerAnimateView.startNormalAnimate()
    }
    
    
    
//    MARK: method
     func setupUI() {
         self.topLogoView.isHidden = false
         self.expiresLabel.isHidden = false
         self.remainDayLabel.isHidden = false
         self.centerAnimateView.isHidden = false
    }
    
    
//    MARK: property
    
    lazy var topLogoView: UIImageView = {
        let bgImage = LGLanguageUtil.isCurrentZH() ?  UIImage(named: "top_logo_cn") : UIImage(named: "top_logo_en")
        let imgView = UIImageView(image: bgImage)
        imgView.contentMode = .scaleAspectFit
        self.view.addSubview(imgView)
        imgView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaInsets.top).offset(61)
            make.centerX.equalToSuperview()
            make.height.equalTo(34)
        }
        return imgView
    }()
    
    lazy var expiresLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.hex(hexColor: 0xffffff,alpha: 0.6)
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "home_premium_expires_in".tr()
        self.view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(self.topLogoView.snp.bottom).offset(42)
            make.centerX.equalToSuperview()
        }
        return label
    }()
    
    
    lazy var remainDayLabel: UILabel = {
        let bgView = UIView()
        self.view.addSubview(bgView)
  
        let label = UILabel()
        label.textColor = UIColor.hex(hexColor: 0xffffff)
        label.font = UIFont.bold(size: 50)
        label.text = "2024"
        bgView.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(self.expiresLabel.snp.bottom).offset(16)
            make.left.equalToSuperview()
        }
        
        let daysLabel = UILabel()
        daysLabel.textColor = UIColor.hex(hexColor: 0xffffff)
        daysLabel.font = UIFont.medium(size: 20)
        daysLabel.text = "home_days".tr()
        bgView.addSubview(daysLabel)
        daysLabel.snp.makeConstraints { make in
            make.bottom.equalTo(label.snp.firstBaseline).offset(5)
            make.left.equalTo(label.snp.right).offset(10)
        }
        
        bgView.snp.makeConstraints { make in
            make.top.equalTo(self.expiresLabel.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
            make.left.equalTo(label)
            make.right.equalTo(daysLabel)
            make.height.equalTo(label)
        }
        
        return label
    }()
    
    
    lazy var centerAnimateView: HomeCenterAnimateView = {
        let aniView = HomeCenterAnimateView()
        self.view.addSubview(aniView)
        let viewWidth = UIScreen.screenWidth() * 0.826
        aniView.snp.makeConstraints { make in
            make.top.equalTo(self.remainDayLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(viewWidth)
            make.height.equalTo(viewWidth)
        }
        return aniView
    }()


    
}
